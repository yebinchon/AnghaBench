
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long tei; int ui_queue; int flag; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {scalar_t__ state; struct PStack* userdata; } ;


 int FLG_L3_INIT ;
 int FsmChangeState (struct FsmInst*,int ) ;
 scalar_t__ ST_L2_3 ;
 int ST_L2_4 ;
 int establishlink (struct FsmInst*) ;
 int skb_queue_empty (int *) ;
 int test_and_set_bit (int ,int *) ;
 int tx_ui (struct PStack*) ;

__attribute__((used)) static void
l2_got_tei(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 st->l2.tei = (long) arg;

 if (fi->state == ST_L2_3) {
  establishlink(fi);
  test_and_set_bit(FLG_L3_INIT, &st->l2.flag);
 } else
  FsmChangeState(fi, ST_L2_4);
 if (!skb_queue_empty(&st->l2.ui_queue))
  tx_ui(st);
}
