
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gpio_get_value (int) ;

__attribute__((used)) static int palmtt_get_pendown_state(void)
{
 return !gpio_get_value(6);
}
