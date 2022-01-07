
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct st5481_in {int mode; int counter; int adapter; int packet_size; int ep; int hdlc_state; int * urb; } ;


 int HDLC_56KBIT ;
 int HDLC_BITREVERSE ;
 scalar_t__ L1_MODE_HDLC_56K ;
 int L1_MODE_NULL ;
 scalar_t__ L1_MODE_TRANS ;
 int isdnhdlc_rcv_init (int *,int ) ;
 int st5481_start_rcv (struct st5481_in*) ;
 int st5481_usb_device_ctrl_msg (int ,int ,int ,int *,int *) ;
 int st5481_usb_pipe_reset (int ,int ,int *,int *) ;
 int usb_unlink_urb (int ) ;

void st5481_in_mode(struct st5481_in *in, int mode)
{
 if (in->mode == mode)
  return;

 in->mode = mode;

 usb_unlink_urb(in->urb[0]);
 usb_unlink_urb(in->urb[1]);

 if (in->mode != L1_MODE_NULL) {
  if (in->mode != L1_MODE_TRANS) {
   u32 features = HDLC_BITREVERSE;

   if (in->mode == L1_MODE_HDLC_56K)
    features |= HDLC_56KBIT;
   isdnhdlc_rcv_init(&in->hdlc_state, features);
  }
  st5481_usb_pipe_reset(in->adapter, in->ep, ((void*)0), ((void*)0));
  st5481_usb_device_ctrl_msg(in->adapter, in->counter,
        in->packet_size,
        ((void*)0), ((void*)0));
  st5481_start_rcv(in);
 } else {
  st5481_usb_device_ctrl_msg(in->adapter, in->counter,
        0, ((void*)0), ((void*)0));
 }
}
