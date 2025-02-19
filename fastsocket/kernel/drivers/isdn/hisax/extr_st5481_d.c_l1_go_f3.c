
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st5481_adapter {int dummy; } ;
struct FsmInst {scalar_t__ state; struct st5481_adapter* userdata; } ;


 int D_L1L2 (struct st5481_adapter*,int,int *) ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int INDICATION ;
 int PH_DEACTIVATE ;
 int ST_L1_F3 ;
 scalar_t__ ST_L1_F7 ;
 int ph_disconnect (struct st5481_adapter*) ;

__attribute__((used)) static void
l1_go_f3(struct FsmInst *fi, int event, void *arg)
{
 struct st5481_adapter *adapter = fi->userdata;

 if (fi->state == ST_L1_F7)
  ph_disconnect(adapter);

 FsmChangeState(fi, ST_L1_F3);
 D_L1L2(adapter, PH_DEACTIVATE | INDICATION, ((void*)0));
}
