
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
typedef int u16 ;
struct TYPE_3__ {struct ctrl_msg* data; int f; } ;
struct st5481_ctrl {int urb; TYPE_1__ msg_fifo; } ;
struct st5481_adapter {struct st5481_ctrl ctrl; } ;
struct TYPE_4__ {scalar_t__ wLength; void* wIndex; void* wValue; void* bRequest; void* bRequestType; } ;
struct ctrl_msg {void* context; int complete; TYPE_2__ dr; } ;
typedef int ctrl_complete_t ;


 int WARNING (char*) ;
 void* cpu_to_le16p (int *) ;
 int fifo_add (int *) ;
 int usb_next_ctrl_msg (int ,struct st5481_adapter*) ;

__attribute__((used)) static void usb_ctrl_msg(struct st5481_adapter *adapter,
    u8 request, u8 requesttype, u16 value, u16 index,
    ctrl_complete_t complete, void *context)
{
 struct st5481_ctrl *ctrl = &adapter->ctrl;
 int w_index;
 struct ctrl_msg *ctrl_msg;

 if ((w_index = fifo_add(&ctrl->msg_fifo.f)) < 0) {
  WARNING("control msg FIFO full");
  return;
 }
 ctrl_msg = &ctrl->msg_fifo.data[w_index];

 ctrl_msg->dr.bRequestType = requesttype;
 ctrl_msg->dr.bRequest = request;
 ctrl_msg->dr.wValue = cpu_to_le16p(&value);
 ctrl_msg->dr.wIndex = cpu_to_le16p(&index);
 ctrl_msg->dr.wLength = 0;
 ctrl_msg->complete = complete;
 ctrl_msg->context = context;

 usb_next_ctrl_msg(ctrl->urb, adapter);
}
