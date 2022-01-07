
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ state; int * adjust_state; int lock; int state_queue; } ;


 scalar_t__ PHY_UP ;
 int cancel_delayed_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void phy_stop_machine(struct phy_device *phydev)
{
 cancel_delayed_work_sync(&phydev->state_queue);

 mutex_lock(&phydev->lock);
 if (phydev->state > PHY_UP)
  phydev->state = PHY_UP;
 mutex_unlock(&phydev->lock);

 phydev->adjust_state = ((void*)0);
}
