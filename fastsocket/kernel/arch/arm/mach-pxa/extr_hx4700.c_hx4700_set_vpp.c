
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;


 int GPIO91_HX4700_FLASH_VPEN ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void hx4700_set_vpp(struct map_info *map, int vpp)
{
 gpio_set_value(GPIO91_HX4700_FLASH_VPEN, vpp);
}
