
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EGPIO_MAGICIAN_BL_POWER ;
 int EGPIO_MAGICIAN_BL_POWER2 ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static int magician_backlight_init(struct device *dev)
{
 int ret;

 ret = gpio_request(EGPIO_MAGICIAN_BL_POWER, "BL_POWER");
 if (ret)
  goto err;
 ret = gpio_request(EGPIO_MAGICIAN_BL_POWER2, "BL_POWER2");
 if (ret)
  goto err2;
 return 0;

err2:
 gpio_free(EGPIO_MAGICIAN_BL_POWER);
err:
 return ret;
}
