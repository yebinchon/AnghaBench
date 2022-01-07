
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flag; int i_queue; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int FLG_L3_INIT ;
 int FLG_PEND_REL ;
 int skb_queue_purge (int *) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
l2_discard_i_setl3(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 skb_queue_purge(&st->l2.i_queue);
 test_and_set_bit(FLG_L3_INIT, &st->l2.flag);
 test_and_clear_bit(FLG_PEND_REL, &st->l2.flag);
}
