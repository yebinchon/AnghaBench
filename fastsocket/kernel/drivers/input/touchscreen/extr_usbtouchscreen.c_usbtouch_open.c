
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbtouch_usb {TYPE_1__* irq; int udev; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int GFP_KERNEL ;
 struct usbtouch_usb* input_get_drvdata (struct input_dev*) ;
 scalar_t__ usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int usbtouch_open(struct input_dev *input)
{
 struct usbtouch_usb *usbtouch = input_get_drvdata(input);

 usbtouch->irq->dev = usbtouch->udev;

 if (usb_submit_urb(usbtouch->irq, GFP_KERNEL))
  return -EIO;

 return 0;
}
