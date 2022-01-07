
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int GPIO_NR_PALMZ72_BL_POWER ;
 int GPIO_NR_PALMZ72_LCD_POWER ;
 int gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static int palmz72_backlight_init(struct device *dev)
{
 int ret;

 ret = gpio_request(GPIO_NR_PALMZ72_BL_POWER, "BL POWER");
 if (ret)
  goto err;
 ret = gpio_direction_output(GPIO_NR_PALMZ72_BL_POWER, 0);
 if (ret)
  goto err2;
 ret = gpio_request(GPIO_NR_PALMZ72_LCD_POWER, "LCD POWER");
 if (ret)
  goto err2;
 ret = gpio_direction_output(GPIO_NR_PALMZ72_LCD_POWER, 0);
 if (ret)
  goto err3;

 return 0;
err3:
 gpio_free(GPIO_NR_PALMZ72_LCD_POWER);
err2:
 gpio_free(GPIO_NR_PALMZ72_BL_POWER);
err:
 return ret;
}
