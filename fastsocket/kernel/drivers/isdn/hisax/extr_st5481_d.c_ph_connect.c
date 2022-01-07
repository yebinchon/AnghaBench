
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st5481_in {int dummy; } ;
struct st5481_d_out {int fsm; } ;
struct st5481_adapter {int leds; struct st5481_in d_in; struct st5481_d_out d_out; } ;


 int DBG (int,char*) ;
 int EP_D_OUT ;
 int FFMSK_D ;
 int FsmChangeState (int *,int ) ;
 int GPIO_OUT ;
 int GREEN_LED ;
 int L1_MODE_HDLC ;
 int LBB ;
 int ST_DOUT_NONE ;
 int USB_DIR_OUT ;
 struct st5481_adapter* cs ;
 int st5481_in_mode (struct st5481_in*,int ) ;
 int st5481_usb_device_ctrl_msg (struct st5481_adapter*,int ,int,int *,int *) ;
 int st5481_usb_pipe_reset (struct st5481_adapter*,int,int *,int *) ;

__attribute__((used)) static void ph_connect(struct st5481_adapter *adapter)
{
 struct st5481_d_out *d_out = &adapter->d_out;
 struct st5481_in *d_in = &adapter->d_in;

 DBG(8,"");

 FsmChangeState(&d_out->fsm, ST_DOUT_NONE);


 st5481_usb_device_ctrl_msg(adapter, FFMSK_D, 0xfc, ((void*)0), ((void*)0));
 st5481_in_mode(d_in, L1_MODE_HDLC);






 st5481_usb_pipe_reset(adapter, EP_D_OUT | USB_DIR_OUT, ((void*)0), ((void*)0));


 adapter->leds |= GREEN_LED;
 st5481_usb_device_ctrl_msg(adapter, GPIO_OUT, adapter->leds, ((void*)0), ((void*)0));
}
