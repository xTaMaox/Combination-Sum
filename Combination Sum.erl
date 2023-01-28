-spec combination_sum(Candidates :: [integer()], Target :: integer()) -> [[integer()]].


f(_, Target, _, Acc) when Target < 0 -> Acc;
f(_, Target, Cur, Acc) when Target =:= 0 -> [Cur|Acc];
f([], Target, Cur, Acc) when Target > 0 -> Acc;
f([A|B], Target, Cur, Acc) when Target > 0 ->
    f(B,Target,Cur,f([A|B],Target-A,[A|Cur],Acc)).

combination_sum(Candidates, Target) ->
  f(Candidates, Target, [], []).