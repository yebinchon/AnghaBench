
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct bfa_s {int comp_q; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 int list_splice_tail_init (int *,struct list_head*) ;

void
bfa_comp_deq(struct bfa_s *bfa, struct list_head *comp_q)
{
 INIT_LIST_HEAD(comp_q);
 list_splice_tail_init(&bfa->comp_q, comp_q);
}
