
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st5481_intr {TYPE_1__* urb; } ;
struct st5481_ctrl {TYPE_1__* urb; } ;
struct st5481_adapter {struct st5481_ctrl ctrl; struct st5481_intr intr; } ;
struct TYPE_3__ {int transfer_buffer; } ;


 int DBG (int,char*) ;
 int kfree (int ) ;
 int usb_free_urb (TYPE_1__*) ;
 int usb_kill_urb (TYPE_1__*) ;

void st5481_release_usb(struct st5481_adapter *adapter)
{
 struct st5481_intr *intr = &adapter->intr;
 struct st5481_ctrl *ctrl = &adapter->ctrl;

 DBG(1,"");


 usb_kill_urb(ctrl->urb);
 kfree(ctrl->urb->transfer_buffer);
 usb_free_urb(ctrl->urb);
 ctrl->urb = ((void*)0);

 usb_kill_urb(intr->urb);
 kfree(intr->urb->transfer_buffer);
 usb_free_urb(intr->urb);
 intr->urb = ((void*)0);
}
