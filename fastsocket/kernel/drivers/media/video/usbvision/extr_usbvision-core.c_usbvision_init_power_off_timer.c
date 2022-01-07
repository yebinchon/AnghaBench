
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long data; int function; } ;
struct usb_usbvision {TYPE_1__ power_off_timer; } ;


 int init_timer (TYPE_1__*) ;
 int usbvision_power_off_timer ;

void usbvision_init_power_off_timer(struct usb_usbvision *usbvision)
{
 init_timer(&usbvision->power_off_timer);
 usbvision->power_off_timer.data = (long)usbvision;
 usbvision->power_off_timer.function = usbvision_power_off_timer;
}
