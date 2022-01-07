
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int WARN_ON (int) ;
 int do_hw_reset () ;
 int gpio_direction_output (int,int ) ;
 int gpio_set_value (int,int) ;
 int mdelay (int) ;
 int reset_gpio ;

__attribute__((used)) static void do_gpio_reset(void)
{
 BUG_ON(reset_gpio == -1);


 gpio_direction_output(reset_gpio, 0);
 mdelay(2);

 gpio_set_value(reset_gpio, 1);
 mdelay(2);

 gpio_set_value(reset_gpio, 0);


 mdelay(10);

 WARN_ON(1);

 do_hw_reset();
}
