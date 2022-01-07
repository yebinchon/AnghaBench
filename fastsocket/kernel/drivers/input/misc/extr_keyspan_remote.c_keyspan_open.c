
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_keyspan {TYPE_1__* irq_urb; int udev; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int GFP_KERNEL ;
 struct usb_keyspan* input_get_drvdata (struct input_dev*) ;
 scalar_t__ usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int keyspan_open(struct input_dev *dev)
{
 struct usb_keyspan *remote = input_get_drvdata(dev);

 remote->irq_urb->dev = remote->udev;
 if (usb_submit_urb(remote->irq_urb, GFP_KERNEL))
  return -EIO;

 return 0;
}
