
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* l2l3 ) (struct PStack*,int,int *) ;int flag; int ui_queue; int i_queue; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int DL_RELEASE ;
 int FLG_ESTAB_PEND ;
 int INDICATION ;
 int skb_queue_purge (int *) ;
 int stub1 (struct PStack*,int,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
l2_st14_persistent_da(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 skb_queue_purge(&st->l2.i_queue);
 skb_queue_purge(&st->l2.ui_queue);
 if (test_and_clear_bit(FLG_ESTAB_PEND, &st->l2.flag))
  st->l2.l2l3(st, DL_RELEASE | INDICATION, ((void*)0));
}
