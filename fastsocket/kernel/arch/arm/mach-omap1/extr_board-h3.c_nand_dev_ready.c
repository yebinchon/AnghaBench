
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_nand_platform_data {int dummy; } ;


 int H3_NAND_RB_GPIO_PIN ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int nand_dev_ready(struct omap_nand_platform_data *data)
{
 return gpio_get_value(H3_NAND_RB_GPIO_PIN);
}
