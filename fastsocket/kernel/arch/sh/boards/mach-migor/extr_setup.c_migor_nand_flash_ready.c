
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int GPIO_PTA1 ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int migor_nand_flash_ready(struct mtd_info *mtd)
{
 return gpio_get_value(GPIO_PTA1);
}
