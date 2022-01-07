
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gpio_mdio_driver ;
 scalar_t__ gpio_regs ;
 int iounmap (scalar_t__) ;
 int of_unregister_platform_driver (int *) ;

void gpio_mdio_exit(void)
{
 of_unregister_platform_driver(&gpio_mdio_driver);
 if (gpio_regs)
  iounmap(gpio_regs);
}
