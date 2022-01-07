
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_kbd {TYPE_1__* irq; int usbdev; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int GFP_KERNEL ;
 struct usb_kbd* input_get_drvdata (struct input_dev*) ;
 scalar_t__ usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int usb_kbd_open(struct input_dev *dev)
{
 struct usb_kbd *kbd = input_get_drvdata(dev);

 kbd->irq->dev = kbd->usbdev;
 if (usb_submit_urb(kbd->irq, GFP_KERNEL))
  return -EIO;

 return 0;
}
