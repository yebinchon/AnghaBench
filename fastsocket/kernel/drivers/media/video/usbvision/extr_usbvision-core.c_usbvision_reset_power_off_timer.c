
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int power_off_timer; } ;


 int del_timer (int *) ;
 scalar_t__ timer_pending (int *) ;

void usbvision_reset_power_off_timer(struct usb_usbvision *usbvision)
{
 if (timer_pending(&usbvision->power_off_timer))
  del_timer(&usbvision->power_off_timer);
}
