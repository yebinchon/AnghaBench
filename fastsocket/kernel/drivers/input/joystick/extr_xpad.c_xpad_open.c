
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_xpad {scalar_t__ xtype; TYPE_1__* irq_in; int udev; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int GFP_KERNEL ;
 scalar_t__ XTYPE_XBOX360W ;
 struct usb_xpad* input_get_drvdata (struct input_dev*) ;
 scalar_t__ usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int xpad_open(struct input_dev *dev)
{
 struct usb_xpad *xpad = input_get_drvdata(dev);


 if(xpad->xtype == XTYPE_XBOX360W)
  return 0;

 xpad->irq_in->dev = xpad->udev;
 if (usb_submit_urb(xpad->irq_in, GFP_KERNEL))
  return -EIO;

 return 0;
}
