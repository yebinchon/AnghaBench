
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO25_GSM_MOD_ON_STATE ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int is_gsm_on(void)
{
 int is_on;

 is_on = !!gpio_get_value(GPIO25_GSM_MOD_ON_STATE);
 return is_on;
}
