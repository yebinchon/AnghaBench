
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_PTT3 ;
 int camera_clk ;
 int camera_lock ;
 int clk_disable (int ) ;
 int clk_put (int ) ;
 int gpio_set_value (int ,int ) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void camera_power_off(void)
{
 clk_disable(camera_clk);
 clk_put(camera_clk);

 gpio_set_value(GPIO_PTT3, 0);
 mutex_unlock(&camera_lock);
}
