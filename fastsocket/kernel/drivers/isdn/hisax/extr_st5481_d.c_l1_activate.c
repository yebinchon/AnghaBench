
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st5481_adapter {int timer; } ;
struct FsmInst {struct st5481_adapter* userdata; } ;


 int EV_TIMER3 ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int FsmRestartTimer (int *,int ,int ,int *,int) ;
 int ST5481_CMD_AR8 ;
 int ST5481_CMD_DR ;
 int ST5481_CMD_PUP ;
 int ST_L1_F4 ;
 int TIMER3_VALUE ;
 int st5481_ph_command (struct st5481_adapter*,int ) ;

__attribute__((used)) static void
l1_activate(struct FsmInst *fi, int event, void *arg)
{
 struct st5481_adapter *adapter = fi->userdata;

 st5481_ph_command(adapter, ST5481_CMD_DR);
 st5481_ph_command(adapter, ST5481_CMD_PUP);
 FsmRestartTimer(&adapter->timer, TIMER3_VALUE, EV_TIMER3, ((void*)0), 2);
 st5481_ph_command(adapter, ST5481_CMD_AR8);
 FsmChangeState(fi, ST_L1_F4);
}
