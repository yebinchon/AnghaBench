
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;


 int MDIO_PIN (struct mii_bus*) ;
 scalar_t__ gpio_regs ;
 int out_le32 (scalar_t__,int) ;

__attribute__((used)) static inline void mdio_lo(struct mii_bus *bus)
{
 out_le32(gpio_regs+0x10, 1 << MDIO_PIN(bus));
}
