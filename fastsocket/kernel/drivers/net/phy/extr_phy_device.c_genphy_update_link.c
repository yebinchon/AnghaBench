
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int link; } ;


 int BMSR_LSTATUS ;
 int MII_BMSR ;
 int phy_read (struct phy_device*,int ) ;

int genphy_update_link(struct phy_device *phydev)
{
 int status;


 status = phy_read(phydev, MII_BMSR);

 if (status < 0)
  return status;


 status = phy_read(phydev, MII_BMSR);

 if (status < 0)
  return status;

 if ((status & BMSR_LSTATUS) == 0)
  phydev->link = 0;
 else
  phydev->link = 1;

 return 0;
}
