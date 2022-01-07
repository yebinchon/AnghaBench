
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_PTZ5 ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static void camera_power(int val)
{
 gpio_set_value(GPIO_PTZ5, val);
 mdelay(10);
}
