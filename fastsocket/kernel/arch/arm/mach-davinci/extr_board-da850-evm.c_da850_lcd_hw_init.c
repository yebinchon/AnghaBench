
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DA850_LCD_BL_PIN ;
 int DA850_LCD_PWR_PIN ;
 int gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int da850_lcd_hw_init(void)
{
 int status;

 status = gpio_request(DA850_LCD_BL_PIN, "lcd bl\n");
 if (status < 0)
  return status;

 status = gpio_request(DA850_LCD_PWR_PIN, "lcd pwr\n");
 if (status < 0) {
  gpio_free(DA850_LCD_BL_PIN);
  return status;
 }

 gpio_direction_output(DA850_LCD_BL_PIN, 0);
 gpio_direction_output(DA850_LCD_PWR_PIN, 0);


 gpio_set_value(DA850_LCD_BL_PIN, 0);


 gpio_set_value(DA850_LCD_PWR_PIN, 0);


 gpio_set_value(DA850_LCD_PWR_PIN, 1);


 gpio_set_value(DA850_LCD_BL_PIN, 1);

 return 0;
}
