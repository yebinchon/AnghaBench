
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ctrlrequest {int dummy; } ;
struct urb {int status; TYPE_1__* dev; scalar_t__ context; } ;
struct TYPE_2__ {int dev; } ;


 int dev_warn (int *,char*,int) ;
 int kfree (struct usb_ctrlrequest*) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static void int51x1_async_cmd_callback(struct urb *urb)
{
 struct usb_ctrlrequest *req = (struct usb_ctrlrequest *)urb->context;
 int status = urb->status;

 if (status < 0)
  dev_warn(&urb->dev->dev, "async callback failed with %d\n", status);

 kfree(req);
 usb_free_urb(urb);
}
