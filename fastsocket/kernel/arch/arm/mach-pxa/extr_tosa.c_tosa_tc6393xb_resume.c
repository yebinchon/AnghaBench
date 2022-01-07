
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int TOSA_GPIO_TC6393XB_L3V_ON ;
 int TOSA_GPIO_TC6393XB_SUSPEND ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static int tosa_tc6393xb_resume(struct platform_device *dev)
{
 gpio_set_value(TOSA_GPIO_TC6393XB_SUSPEND, 1);
 mdelay(10);
 gpio_set_value(TOSA_GPIO_TC6393XB_L3V_ON, 1);
 mdelay(10);

 return 0;
}
