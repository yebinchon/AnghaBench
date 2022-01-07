
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ state; scalar_t__ irq; int lock; } ;


 scalar_t__ PHY_HALTED ;
 int PHY_INTERRUPT_DISABLED ;
 scalar_t__ PHY_POLL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_clear_interrupt (struct phy_device*) ;
 int phy_config_interrupt (struct phy_device*,int ) ;

void phy_stop(struct phy_device *phydev)
{
 mutex_lock(&phydev->lock);

 if (PHY_HALTED == phydev->state)
  goto out_unlock;

 if (phydev->irq != PHY_POLL) {

  phy_config_interrupt(phydev, PHY_INTERRUPT_DISABLED);


  phy_clear_interrupt(phydev);
 }

 phydev->state = PHY_HALTED;

out_unlock:
 mutex_unlock(&phydev->lock);






}
