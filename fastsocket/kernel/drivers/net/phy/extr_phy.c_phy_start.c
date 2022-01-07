
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int state; int lock; } ;



 int PHY_PENDING ;

 int PHY_RESUMING ;

 int PHY_UP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void phy_start(struct phy_device *phydev)
{
 mutex_lock(&phydev->lock);

 switch (phydev->state) {
  case 128:
   phydev->state = PHY_PENDING;
   break;
  case 129:
   phydev->state = PHY_UP;
   break;
  case 130:
   phydev->state = PHY_RESUMING;
  default:
   break;
 }
 mutex_unlock(&phydev->lock);
}
