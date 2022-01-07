
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int TOSA_GPIO_AC_IN ;
 int gpio_direction_input (int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static int tosa_power_init(struct device *dev)
{
 int ret = gpio_request(TOSA_GPIO_AC_IN, "ac in");
 if (ret)
  goto err_gpio_req;

 ret = gpio_direction_input(TOSA_GPIO_AC_IN);
 if (ret)
  goto err_gpio_in;

 return 0;

err_gpio_in:
 gpio_free(TOSA_GPIO_AC_IN);
err_gpio_req:
 return ret;
}
