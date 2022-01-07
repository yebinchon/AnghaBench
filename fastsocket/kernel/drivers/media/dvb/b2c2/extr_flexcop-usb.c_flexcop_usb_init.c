
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct flexcop_usb {int uintf; TYPE_1__* udev; } ;
struct TYPE_2__ {int speed; } ;


 int ENODEV ;




 int err (char*) ;
 int info (char*) ;
 int usb_set_interface (TYPE_1__*,int ,int) ;
 int usb_set_intfdata (int ,struct flexcop_usb*) ;

__attribute__((used)) static int flexcop_usb_init(struct flexcop_usb *fc_usb)
{

 usb_set_interface(fc_usb->udev,0,1);
 switch (fc_usb->udev->speed) {
 case 129:
  err("cannot handle USB speed because it is too slow.");
  return -ENODEV;
  break;
 case 131:
  info("running at FULL speed.");
  break;
 case 130:
  info("running at HIGH speed.");
  break;
 case 128:
 default:
  err("cannot handle USB speed because it is unknown.");
  return -ENODEV;
 }
 usb_set_intfdata(fc_usb->uintf, fc_usb);
 return 0;
}
