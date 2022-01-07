
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct flash_platform_data {char* name; } ;
struct TYPE_3__ {struct flash_platform_data* platform_data; } ;
struct TYPE_4__ {int num_resources; struct resource* resource; TYPE_1__ dev; } ;


 TYPE_2__ sa11x0mtd_device ;

void sa11x0_set_flash_data(struct flash_platform_data *flash,
      struct resource *res, int nr)
{
 flash->name = "sa1100";
 sa11x0mtd_device.dev.platform_data = flash;
 sa11x0mtd_device.resource = res;
 sa11x0mtd_device.num_resources = nr;
}
