
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int printdebug; scalar_t__ userint; struct PStack* userdata; scalar_t__ debug; int state; int * fsm; } ;
struct TYPE_7__ {int t203; TYPE_4__ l2m; int t200; int debug_id; int flag; scalar_t__ debug; int ui_queue; int i_queue; int lock; } ;
struct TYPE_6__ {int l3l2; } ;
struct TYPE_5__ {int l1l2; } ;
struct PStack {TYPE_3__ l2; TYPE_2__ l3; TYPE_1__ l1; } ;


 int FLG_LAPB ;
 int FsmInitTimer (TYPE_4__*,int *) ;
 int InitWin (TYPE_3__*) ;
 int ST_L2_1 ;
 int ST_L2_4 ;
 int isdnl2_l1l2 ;
 int isdnl2_l3l2 ;
 int l2fsm ;
 int l2m_debug ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int strcpy (int ,char*) ;
 scalar_t__ test_bit (int ,int *) ;

void
setstack_isdnl2(struct PStack *st, char *debug_id)
{
 spin_lock_init(&st->l2.lock);
 st->l1.l1l2 = isdnl2_l1l2;
 st->l3.l3l2 = isdnl2_l3l2;

 skb_queue_head_init(&st->l2.i_queue);
 skb_queue_head_init(&st->l2.ui_queue);
 InitWin(&st->l2);
 st->l2.debug = 0;

 st->l2.l2m.fsm = &l2fsm;
 if (test_bit(FLG_LAPB, &st->l2.flag))
  st->l2.l2m.state = ST_L2_4;
 else
 st->l2.l2m.state = ST_L2_1;
 st->l2.l2m.debug = 0;
 st->l2.l2m.userdata = st;
 st->l2.l2m.userint = 0;
 st->l2.l2m.printdebug = l2m_debug;
 strcpy(st->l2.debug_id, debug_id);

 FsmInitTimer(&st->l2.l2m, &st->l2.t200);
 FsmInitTimer(&st->l2.l2m, &st->l2.t203);
}
