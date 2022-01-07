
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int l3m_timer; } ;
struct PStack {TYPE_1__ l3; } ;
struct FsmInst {struct PStack* userdata; } ;


 int DREL_TIMER_VALUE ;
 int EV_TIMEOUT ;
 int FsmAddTimer (int *,int ,int ,int *,int) ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int ST_L3_LC_REL_DELAY ;

__attribute__((used)) static void
lc_start_delay(struct FsmInst *fi, int event, void *arg)
{
       struct PStack *st = fi->userdata;

       FsmChangeState(fi, ST_L3_LC_REL_DELAY);
       FsmAddTimer(&st->l3.l3m_timer, DREL_TIMER_VALUE, EV_TIMEOUT, ((void*)0), 50);
}
