
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 struct list_head* bfa_q_next (struct list_head*) ;

__attribute__((used)) static inline int
bfa_q_is_on_q_func(struct list_head *q, struct list_head *qe)
{
 struct list_head *tqe;

 tqe = bfa_q_next(q);
 while (tqe != q) {
  if (tqe == qe)
   return 1;
  tqe = bfa_q_next(tqe);
  if (tqe == ((void*)0))
   break;
 }
 return 0;
}
