
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct resource {int dummy; } ;
struct TYPE_3__ {int num_resources; struct resource* resource; } ;


 int platform_device_register (TYPE_1__*) ;
 TYPE_1__ realview_flash_device ;

int realview_flash_register(struct resource *res, u32 num)
{
 realview_flash_device.resource = res;
 realview_flash_device.num_resources = num;
 return platform_device_register(&realview_flash_device);
}
