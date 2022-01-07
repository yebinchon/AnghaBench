
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6gmac {int dummy; } ;
struct mii_bus {struct s6gmac* priv; } ;


 int ETIME ;
 int PHY_INIT_TIMEOUT ;
 scalar_t__ s6mii_busy (struct s6gmac*,int ) ;
 int s6mii_enable (struct s6gmac*) ;

__attribute__((used)) static int s6mii_reset(struct mii_bus *bus)
{
 struct s6gmac *pd = bus->priv;
 s6mii_enable(pd);
 if (s6mii_busy(pd, PHY_INIT_TIMEOUT))
  return -ETIME;
 return 0;
}
