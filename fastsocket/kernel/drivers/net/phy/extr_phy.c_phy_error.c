
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int lock; int state; } ;


 int PHY_HALTED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void phy_error(struct phy_device *phydev)
{
 mutex_lock(&phydev->lock);
 phydev->state = PHY_HALTED;
 mutex_unlock(&phydev->lock);
}
