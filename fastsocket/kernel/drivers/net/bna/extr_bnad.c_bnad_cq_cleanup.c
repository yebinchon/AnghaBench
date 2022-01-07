
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad {int dummy; } ;
struct bna_cq_entry {scalar_t__ valid; } ;
struct bna_ccb {int q_depth; scalar_t__ sw_q; } ;



__attribute__((used)) static void
bnad_cq_cleanup(struct bnad *bnad, struct bna_ccb *ccb)
{
 struct bna_cq_entry *cmpl;
 int i;

 for (i = 0; i < ccb->q_depth; i++) {
  cmpl = &((struct bna_cq_entry *)ccb->sw_q)[i];
  cmpl->valid = 0;
 }
}
