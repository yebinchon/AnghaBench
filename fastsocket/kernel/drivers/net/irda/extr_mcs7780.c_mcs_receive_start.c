
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; int in_frame; } ;
struct mcs_cb {TYPE_2__* rx_urb; int in_buf; int ep_in; int usbdev; TYPE_1__ rx_buff; } ;
struct TYPE_5__ {scalar_t__ status; } ;


 int FALSE ;
 int GFP_KERNEL ;
 int OUTSIDE_FRAME ;
 int mcs_receive_irq ;
 int usb_fill_bulk_urb (TYPE_2__*,int ,int ,int ,int,int ,struct mcs_cb*) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_submit_urb (TYPE_2__*,int ) ;

__attribute__((used)) static inline int mcs_receive_start(struct mcs_cb *mcs)
{
 mcs->rx_buff.in_frame = FALSE;
 mcs->rx_buff.state = OUTSIDE_FRAME;

 usb_fill_bulk_urb(mcs->rx_urb, mcs->usbdev,
     usb_rcvbulkpipe(mcs->usbdev, mcs->ep_in),
     mcs->in_buf, 4096, mcs_receive_irq, mcs);

 mcs->rx_urb->status = 0;
 return usb_submit_urb(mcs->rx_urb, GFP_KERNEL);
}
