
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int power_off_timer; } ;


 scalar_t__ USBVISION_POWEROFF_TIME ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

void usbvision_set_power_off_timer(struct usb_usbvision *usbvision)
{
 mod_timer(&usbvision->power_off_timer, jiffies + USBVISION_POWEROFF_TIME);
}
