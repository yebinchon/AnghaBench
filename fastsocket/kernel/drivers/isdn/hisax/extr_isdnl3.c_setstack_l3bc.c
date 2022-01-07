
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int l4l3; } ;
struct TYPE_4__ {int debug; int printdebug; scalar_t__ userint; struct PStack* userdata; int state; int * fsm; } ;
struct TYPE_5__ {int debug_id; TYPE_1__ l3m; int squeue; int * global; int * proc; } ;
struct PStack {TYPE_3__ lli; TYPE_2__ l3; } ;
struct Channel {int dummy; } ;


 int ST_L3_LC_REL ;
 int isdnl3_trans ;
 int l3fsm ;
 int l3m_debug ;
 int skb_queue_head_init (int *) ;
 int strcpy (int ,char*) ;

void
setstack_l3bc(struct PStack *st, struct Channel *chanp)
{

 st->l3.proc = ((void*)0);
 st->l3.global = ((void*)0);
 skb_queue_head_init(&st->l3.squeue);
 st->l3.l3m.fsm = &l3fsm;
 st->l3.l3m.state = ST_L3_LC_REL;
 st->l3.l3m.debug = 1;
 st->l3.l3m.userdata = st;
 st->l3.l3m.userint = 0;
 st->l3.l3m.printdebug = l3m_debug;
 strcpy(st->l3.debug_id, "L3BC ");
 st->lli.l4l3 = isdnl3_trans;
}
