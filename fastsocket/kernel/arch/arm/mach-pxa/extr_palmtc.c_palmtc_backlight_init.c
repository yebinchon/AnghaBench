
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int GPIO_NR_PALMTC_BL_POWER ;
 int gpio_direction_output (int ,int) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static int palmtc_backlight_init(struct device *dev)
{
 int ret;

 ret = gpio_request(GPIO_NR_PALMTC_BL_POWER, "BL POWER");
 if (ret)
  goto err;
 ret = gpio_direction_output(GPIO_NR_PALMTC_BL_POWER, 1);
 if (ret)
  goto err2;

 return 0;

err2:
 gpio_free(GPIO_NR_PALMTC_BL_POWER);
err:
 return ret;
}
