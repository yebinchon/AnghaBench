
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int addr; } ;


 int genphy_config_aneg (struct phy_device*) ;

__attribute__((used)) static int ip175c_config_aneg(struct phy_device *phydev)
{
 if (phydev->addr == 4)
  genphy_config_aneg(phydev);

 return 0;
}
