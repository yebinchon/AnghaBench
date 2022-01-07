
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct driver_data {struct chip_data* cur_chip; } ;
struct chip_data {int gpio_cs_inverted; int gpio_cs; int (* cs_control ) (int ) ;} ;


 int PXA2XX_CS_DEASSERT ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int stub1 (int ) ;

__attribute__((used)) static void cs_deassert(struct driver_data *drv_data)
{
 struct chip_data *chip = drv_data->cur_chip;

 if (chip->cs_control) {
  chip->cs_control(PXA2XX_CS_DEASSERT);
  return;
 }

 if (gpio_is_valid(chip->gpio_cs))
  gpio_set_value(chip->gpio_cs, !chip->gpio_cs_inverted);
}
