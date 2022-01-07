
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int lock; } ;


 int BMCR_PDOWN ;
 int MII_BMCR ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

int genphy_suspend(struct phy_device *phydev)
{
 int value;

 mutex_lock(&phydev->lock);

 value = phy_read(phydev, MII_BMCR);
 phy_write(phydev, MII_BMCR, (value | BMCR_PDOWN));

 mutex_unlock(&phydev->lock);

 return 0;
}
