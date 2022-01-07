
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st5481_d_out {int fsm; scalar_t__ tx_skb; } ;
struct st5481_adapter {struct st5481_d_out d_out; } ;
struct FsmInst {struct st5481_adapter* userdata; } ;


 int EV_DOUT_START_XMIT ;
 int FsmChangeState (int *,int ) ;
 int FsmEvent (int *,int ,int *) ;
 int ST_DOUT_NONE ;

__attribute__((used)) static void dout_reseted(struct FsmInst *fsm, int event, void *arg)
{
 struct st5481_adapter *adapter = fsm->userdata;
 struct st5481_d_out *d_out = &adapter->d_out;

 FsmChangeState(&d_out->fsm, ST_DOUT_NONE);

 if (d_out->tx_skb)
  FsmEvent(&d_out->fsm, EV_DOUT_START_XMIT, ((void*)0));
}
