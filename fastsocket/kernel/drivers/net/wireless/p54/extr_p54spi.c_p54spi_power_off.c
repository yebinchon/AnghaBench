
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p54s_priv {int dummy; } ;


 int disable_irq (int ) ;
 int gpio_set_value (int ,int ) ;
 int gpio_to_irq (int ) ;
 int p54spi_gpio_irq ;
 int p54spi_gpio_power ;

__attribute__((used)) static void p54spi_power_off(struct p54s_priv *priv)
{
 disable_irq(gpio_to_irq(p54spi_gpio_irq));
 gpio_set_value(p54spi_gpio_power, 0);
}
