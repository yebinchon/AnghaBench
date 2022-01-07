
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {scalar_t__ autoneg; scalar_t__ state; int lock; int link_timeout; TYPE_1__* drv; } ;
struct TYPE_2__ {int (* config_aneg ) (struct phy_device*) ;} ;


 scalar_t__ AUTONEG_DISABLE ;
 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ PHY_AN ;
 int PHY_AN_TIMEOUT ;
 int PHY_FORCE_TIMEOUT ;
 scalar_t__ PHY_FORCING ;
 scalar_t__ PHY_HALTED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_sanitize_settings (struct phy_device*) ;
 int stub1 (struct phy_device*) ;

int phy_start_aneg(struct phy_device *phydev)
{
 int err;

 mutex_lock(&phydev->lock);

 if (AUTONEG_DISABLE == phydev->autoneg)
  phy_sanitize_settings(phydev);

 err = phydev->drv->config_aneg(phydev);

 if (err < 0)
  goto out_unlock;

 if (phydev->state != PHY_HALTED) {
  if (AUTONEG_ENABLE == phydev->autoneg) {
   phydev->state = PHY_AN;
   phydev->link_timeout = PHY_AN_TIMEOUT;
  } else {
   phydev->state = PHY_FORCING;
   phydev->link_timeout = PHY_FORCE_TIMEOUT;
  }
 }

out_unlock:
 mutex_unlock(&phydev->lock);
 return err;
}
