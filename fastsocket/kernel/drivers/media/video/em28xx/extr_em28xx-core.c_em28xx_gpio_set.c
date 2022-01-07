
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx_reg_seq {int sleep; scalar_t__ reg; int mask; int val; } ;
struct em28xx {scalar_t__ mode; } ;


 scalar_t__ EM28XX_ANALOG_MODE ;
 int EM28XX_R12_VINENABLE ;
 scalar_t__ EM28XX_SUSPEND ;
 int em28xx_write_reg (struct em28xx*,int,int) ;
 int em28xx_write_reg_bits (struct em28xx*,scalar_t__,int ,int ) ;
 int msleep (int) ;

int em28xx_gpio_set(struct em28xx *dev, struct em28xx_reg_seq *gpio)
{
 int rc = 0;

 if (!gpio)
  return rc;

 if (dev->mode != EM28XX_SUSPEND) {
  em28xx_write_reg(dev, 0x48, 0x00);
  if (dev->mode == EM28XX_ANALOG_MODE)
   em28xx_write_reg(dev, EM28XX_R12_VINENABLE, 0x67);
  else
   em28xx_write_reg(dev, EM28XX_R12_VINENABLE, 0x37);
  msleep(6);
 }


 while (gpio->sleep >= 0) {
  if (gpio->reg >= 0) {
   rc = em28xx_write_reg_bits(dev,
         gpio->reg,
         gpio->val,
         gpio->mask);
   if (rc < 0)
    return rc;
  }
  if (gpio->sleep > 0)
   msleep(gpio->sleep);

  gpio++;
 }
 return rc;
}
