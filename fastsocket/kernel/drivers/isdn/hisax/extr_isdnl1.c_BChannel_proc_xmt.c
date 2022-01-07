
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* l2l1 ) (struct PStack*,int,int *) ;} ;
struct TYPE_3__ {int (* l1l2 ) (struct PStack*,int,int *) ;int Flags; } ;
struct PStack {TYPE_2__ l2; TYPE_1__ l1; } ;
struct BCState {int squeue; int Flag; int cs; struct PStack* st; } ;


 int BC_FLG_ACTIV ;
 int BC_FLG_BUSY ;
 int CONFIRM ;
 int FLG_L1_PULL_REQ ;
 int PH_DEACTIVATE ;
 int PH_PULL ;
 int debugl1 (int ,char*) ;
 scalar_t__ skb_queue_empty (int *) ;
 int stub1 (struct PStack*,int,int *) ;
 int stub2 (struct PStack*,int,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
BChannel_proc_xmt(struct BCState *bcs)
{
 struct PStack *st = bcs->st;

 if (test_bit(BC_FLG_BUSY, &bcs->Flag)) {
  debugl1(bcs->cs, "BC_BUSY Error");
  return;
 }

 if (test_and_clear_bit(FLG_L1_PULL_REQ, &st->l1.Flags))
  st->l1.l1l2(st, PH_PULL | CONFIRM, ((void*)0));
 if (!test_bit(BC_FLG_ACTIV, &bcs->Flag)) {
  if (!test_bit(BC_FLG_BUSY, &bcs->Flag) &&
      skb_queue_empty(&bcs->squeue)) {
   st->l2.l2l1(st, PH_DEACTIVATE | CONFIRM, ((void*)0));
  }
 }
}
