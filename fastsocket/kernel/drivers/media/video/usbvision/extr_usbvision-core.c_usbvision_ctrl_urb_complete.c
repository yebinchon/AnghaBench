
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int ctrl_urb_wq; scalar_t__ ctrl_urb_busy; } ;
struct urb {scalar_t__ context; } ;


 int DBG_IRQ ;
 int PDEBUG (int ,char*) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void usbvision_ctrl_urb_complete(struct urb *urb)
{
 struct usb_usbvision *usbvision = (struct usb_usbvision *)urb->context;

 PDEBUG(DBG_IRQ, "");
 usbvision->ctrl_urb_busy = 0;
 if (waitqueue_active(&usbvision->ctrl_urb_wq))
  wake_up_interruptible(&usbvision->ctrl_urb_wq);
}
