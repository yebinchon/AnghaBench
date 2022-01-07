
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st5481_d_out {int fsm; } ;
struct st5481_adapter {struct st5481_d_out d_out; } ;
struct FsmInst {struct st5481_adapter* userdata; } ;


 int FsmChangeState (int *,int ) ;
 int OUT_D_COUNTER ;
 int ST_DOUT_LONG_WAIT_DEN ;
 int st5481_usb_device_ctrl_msg (struct st5481_adapter*,int ,int,int *,int *) ;

__attribute__((used)) static void dout_long_enable_fifo(struct FsmInst *fsm, int event, void *arg)
{
 struct st5481_adapter *adapter = fsm->userdata;
 struct st5481_d_out *d_out = &adapter->d_out;

 st5481_usb_device_ctrl_msg(adapter, OUT_D_COUNTER, 16, ((void*)0), ((void*)0));
 FsmChangeState(&d_out->fsm, ST_DOUT_LONG_WAIT_DEN);
}
