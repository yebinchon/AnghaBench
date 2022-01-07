
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;


 int dev_info (int *,char*) ;

__attribute__((used)) static int si470x_usb_driver_resume(struct usb_interface *intf)
{
 dev_info(&intf->dev, "resuming now...\n");

 return 0;
}
