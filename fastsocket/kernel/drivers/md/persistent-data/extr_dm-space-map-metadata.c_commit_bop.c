
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_metadata {int ll; } ;
struct block_op {int type; int block; } ;
typedef enum allocation_event { ____Placeholder_allocation_event } allocation_event ;




 int sm_ll_dec (int *,int ,int*) ;
 int sm_ll_inc (int *,int ,int*) ;

__attribute__((used)) static int commit_bop(struct sm_metadata *smm, struct block_op *op)
{
 int r = 0;
 enum allocation_event ev;

 switch (op->type) {
 case 128:
  r = sm_ll_inc(&smm->ll, op->block, &ev);
  break;

 case 129:
  r = sm_ll_dec(&smm->ll, op->block, &ev);
  break;
 }

 return r;
}
