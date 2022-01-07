
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_PTT0 ;
 int GPIO_PTT2 ;
 int GPIO_PTT3 ;
 int camera_clk ;
 int camera_lock ;
 int clk_enable (int ) ;
 int clk_get (int *,char*) ;
 int clk_set_rate (int ,int) ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void camera_power_on(int is_tw)
{
 mutex_lock(&camera_lock);




 camera_clk = clk_get(((void*)0), "video_clk");
 clk_set_rate(camera_clk, 10000000);
 clk_enable(camera_clk);


 mdelay(10);
 if (is_tw) {
  gpio_set_value(GPIO_PTT2, 0);
  gpio_set_value(GPIO_PTT0, 0);
 } else {
  gpio_set_value(GPIO_PTT0, 1);
 }
 gpio_set_value(GPIO_PTT3, 0);
 mdelay(10);
 gpio_set_value(GPIO_PTT3, 1);
 mdelay(10);
}
