
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_BMSR ;
 int MII_EXPANSION ;
 int MII_QS6612_ISR ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int qs6612_ack_interrupt(struct phy_device *phydev)
{
 int err;

 err = phy_read(phydev, MII_QS6612_ISR);

 if (err < 0)
  return err;

 err = phy_read(phydev, MII_BMSR);

 if (err < 0)
  return err;

 err = phy_read(phydev, MII_EXPANSION);

 if (err < 0)
  return err;

 return 0;
}
