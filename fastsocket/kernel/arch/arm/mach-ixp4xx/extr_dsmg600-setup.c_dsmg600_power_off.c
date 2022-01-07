
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSMG600_PO_GPIO ;
 int IXP4XX_GPIO_HIGH ;
 int IXP4XX_GPIO_OUT ;
 int gpio_line_config (int ,int ) ;
 int gpio_line_set (int ,int ) ;

__attribute__((used)) static void dsmg600_power_off(void)
{

 gpio_line_config(DSMG600_PO_GPIO, IXP4XX_GPIO_OUT);


 gpio_line_set(DSMG600_PO_GPIO, IXP4XX_GPIO_HIGH);
}
