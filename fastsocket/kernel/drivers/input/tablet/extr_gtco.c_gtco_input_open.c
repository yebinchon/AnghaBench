
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct gtco {TYPE_1__* urbinfo; int usbdev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int GFP_KERNEL ;
 struct gtco* input_get_drvdata (struct input_dev*) ;
 scalar_t__ usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int gtco_input_open(struct input_dev *inputdev)
{
 struct gtco *device = input_get_drvdata(inputdev);

 device->urbinfo->dev = device->usbdev;
 if (usb_submit_urb(device->urbinfo, GFP_KERNEL))
  return -EIO;

 return 0;
}
