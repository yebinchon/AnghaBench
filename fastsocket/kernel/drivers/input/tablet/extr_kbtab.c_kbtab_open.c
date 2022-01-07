
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kbtab {TYPE_1__* irq; int usbdev; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int GFP_KERNEL ;
 struct kbtab* input_get_drvdata (struct input_dev*) ;
 scalar_t__ usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int kbtab_open(struct input_dev *dev)
{
 struct kbtab *kbtab = input_get_drvdata(dev);

 kbtab->irq->dev = kbtab->usbdev;
 if (usb_submit_urb(kbtab->irq, GFP_KERNEL))
  return -EIO;

 return 0;
}
