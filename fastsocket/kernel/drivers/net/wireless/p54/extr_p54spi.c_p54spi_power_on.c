
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p54s_priv {int dummy; } ;


 int enable_irq (int ) ;
 int gpio_set_value (int ,int) ;
 int gpio_to_irq (int ) ;
 int msleep (int) ;
 int p54spi_gpio_irq ;
 int p54spi_gpio_power ;

__attribute__((used)) static void p54spi_power_on(struct p54s_priv *priv)
{
 gpio_set_value(p54spi_gpio_power, 1);
 enable_irq(gpio_to_irq(p54spi_gpio_irq));





 msleep(10);
}
