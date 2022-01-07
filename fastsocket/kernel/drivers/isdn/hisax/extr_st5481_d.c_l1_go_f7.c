
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st5481_adapter {int timer; } ;
struct FsmInst {struct st5481_adapter* userdata; } ;


 int D_L1L2 (struct st5481_adapter*,int,int *) ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int FsmDelTimer (int *,int ) ;
 int INDICATION ;
 int PH_ACTIVATE ;
 int ST_L1_F7 ;
 int ph_connect (struct st5481_adapter*) ;

__attribute__((used)) static void
l1_go_f7(struct FsmInst *fi, int event, void *arg)
{
 struct st5481_adapter *adapter = fi->userdata;

 FsmDelTimer(&adapter->timer, 0);
 ph_connect(adapter);
 FsmChangeState(fi, ST_L1_F7);
 D_L1L2(adapter, PH_ACTIVATE | INDICATION, ((void*)0));
}
