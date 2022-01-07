
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IXP4XX_GPIO_HIGH ;
 int IXP4XX_GPIO_OUT ;
 int NAS100D_PO_GPIO ;
 int gpio_line_config (int ,int ) ;
 int gpio_line_set (int ,int ) ;

__attribute__((used)) static void nas100d_power_off(void)
{



 gpio_line_config(NAS100D_PO_GPIO, IXP4XX_GPIO_OUT);


 gpio_line_set(NAS100D_PO_GPIO, IXP4XX_GPIO_HIGH);
}
