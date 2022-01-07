
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ state; int phy_queue; int irq_disable; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ PHY_HALTED ;
 int atomic_inc (int *) ;
 int disable_irq_nosync (int) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t phy_interrupt(int irq, void *phy_dat)
{
 struct phy_device *phydev = phy_dat;

 if (PHY_HALTED == phydev->state)
  return IRQ_NONE;





 disable_irq_nosync(irq);
 atomic_inc(&phydev->irq_disable);

 schedule_work(&phydev->phy_queue);

 return IRQ_HANDLED;
}
