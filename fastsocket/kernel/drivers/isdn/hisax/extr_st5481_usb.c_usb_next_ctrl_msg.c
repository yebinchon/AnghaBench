
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {unsigned char* setup_packet; int dev; } ;
struct TYPE_3__ {int * data; int f; } ;
struct st5481_ctrl {TYPE_1__ msg_fifo; int busy; } ;
struct st5481_adapter {int usb_dev; struct st5481_ctrl ctrl; } ;
struct TYPE_4__ {int wIndex; int wValue; int bRequest; } ;
struct ctrl_msg {TYPE_2__ dr; } ;


 int DBG (int,char*,int ,int ,int ) ;
 int GFP_ATOMIC ;
 int SUBMIT_URB (struct urb*,int ) ;
 int fifo_remove (int *) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void usb_next_ctrl_msg(struct urb *urb,
         struct st5481_adapter *adapter)
{
 struct st5481_ctrl *ctrl = &adapter->ctrl;
 int r_index;

 if (test_and_set_bit(0, &ctrl->busy)) {
  return;
 }

 if ((r_index = fifo_remove(&ctrl->msg_fifo.f)) < 0) {
  test_and_clear_bit(0,&ctrl->busy);
  return;
 }
 urb->setup_packet =
  (unsigned char *)&ctrl->msg_fifo.data[r_index];

 DBG(1,"request=0x%02x,value=0x%04x,index=%x",
     ((struct ctrl_msg *)urb->setup_packet)->dr.bRequest,
     ((struct ctrl_msg *)urb->setup_packet)->dr.wValue,
     ((struct ctrl_msg *)urb->setup_packet)->dr.wIndex);


 urb->dev = adapter->usb_dev;

 SUBMIT_URB(urb, GFP_ATOMIC);
}
