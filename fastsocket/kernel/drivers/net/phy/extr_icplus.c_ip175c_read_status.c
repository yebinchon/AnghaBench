
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int addr; int irq; } ;


 int PHY_IGNORE_INTERRUPT ;
 int genphy_read_status (struct phy_device*) ;

__attribute__((used)) static int ip175c_read_status(struct phy_device *phydev)
{
 if (phydev->addr == 4)
  genphy_read_status(phydev);
 else

  phydev->irq = PHY_IGNORE_INTERRUPT;

 return 0;
}
