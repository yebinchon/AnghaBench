
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plat_lcd_data {int dummy; } ;


 int S3C64XX_GPF (int) ;
 int S3C64XX_GPN (int) ;
 int gpio_direction_output (int ,int) ;
 int msleep (int) ;

__attribute__((used)) static void smdk6410_lcd_power_set(struct plat_lcd_data *pd,
       unsigned int power)
{
 if (power) {
  gpio_direction_output(S3C64XX_GPF(13), 1);
  gpio_direction_output(S3C64XX_GPF(15), 1);


  gpio_direction_output(S3C64XX_GPN(5), 0);
  msleep(10);
  gpio_direction_output(S3C64XX_GPN(5), 1);
  msleep(1);
 } else {
  gpio_direction_output(S3C64XX_GPF(15), 0);
  gpio_direction_output(S3C64XX_GPF(13), 0);
 }
}
