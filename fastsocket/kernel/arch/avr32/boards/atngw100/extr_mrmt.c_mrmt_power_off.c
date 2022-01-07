
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIN_PWR_ON ;
 int gpio_set_value (int ,int ) ;

__attribute__((used)) static void mrmt_power_off(void)
{

 gpio_set_value( PIN_PWR_ON, 0 );
}
