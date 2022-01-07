
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_3__ {struct resource* resource; } ;


 int platform_device_register (TYPE_1__*) ;
 TYPE_1__ realview_usb_device ;

int realview_usb_register(struct resource *res)
{
 realview_usb_device.resource = res;
 return platform_device_register(&realview_usb_device);
}
