
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO96_AC_DETECT ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int is_ac_connected(void)
{
 return gpio_get_value(GPIO96_AC_DETECT);
}
