
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st5481_adapter {int dummy; } ;
struct FsmInst {struct st5481_adapter* userdata; } ;


 int D_L1L2 (struct st5481_adapter*,int,int *) ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int INDICATION ;
 int PH_DEACTIVATE ;
 int ST5481_CMD_DR ;
 int ST_L1_F3 ;
 int st5481_ph_command (struct st5481_adapter*,int ) ;

__attribute__((used)) static void
l1_timer3(struct FsmInst *fi, int event, void *arg)
{
 struct st5481_adapter *adapter = fi->userdata;

 st5481_ph_command(adapter, ST5481_CMD_DR);
 FsmChangeState(fi, ST_L1_F3);
 D_L1L2(adapter, PH_DEACTIVATE | INDICATION, ((void*)0));
}
