
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct driver_data {int dummy; } ;
struct chip_data {int flag; scalar_t__ cs_chg_udelay; int cs_gpio; int chip_select_num; } ;


 int gpio_set_value (int ,int) ;
 scalar_t__ likely (int ) ;
 int read_FLAG (struct driver_data*) ;
 int udelay (scalar_t__) ;
 int write_FLAG (struct driver_data*,int) ;

__attribute__((used)) static void bfin_spi_cs_deactive(struct driver_data *drv_data, struct chip_data *chip)
{
 if (likely(chip->chip_select_num)) {
  u16 flag = read_FLAG(drv_data);

  flag &= ~chip->flag;
  flag |= (chip->flag << 8);

  write_FLAG(drv_data, flag);
 } else {
  gpio_set_value(chip->cs_gpio, 1);
 }


 if (chip->cs_chg_udelay)
  udelay(chip->cs_chg_udelay);
}
