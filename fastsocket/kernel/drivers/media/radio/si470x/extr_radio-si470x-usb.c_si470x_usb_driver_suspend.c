
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
typedef int pm_message_t ;


 int dev_info (int *,char*) ;

__attribute__((used)) static int si470x_usb_driver_suspend(struct usb_interface *intf,
  pm_message_t message)
{
 dev_info(&intf->dev, "suspending now...\n");

 return 0;
}
