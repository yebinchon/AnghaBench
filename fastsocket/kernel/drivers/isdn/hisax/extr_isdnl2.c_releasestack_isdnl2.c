
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ui_queue; int i_queue; int t203; int t200; } ;
struct PStack {TYPE_1__ l2; } ;


 int FsmDelTimer (int *,int) ;
 int ReleaseWin (TYPE_1__*) ;
 int skb_queue_purge (int *) ;

void
releasestack_isdnl2(struct PStack *st)
{
 FsmDelTimer(&st->l2.t200, 21);
 FsmDelTimer(&st->l2.t203, 16);
 skb_queue_purge(&st->l2.i_queue);
 skb_queue_purge(&st->l2.ui_queue);
 ReleaseWin(&st->l2);
}
