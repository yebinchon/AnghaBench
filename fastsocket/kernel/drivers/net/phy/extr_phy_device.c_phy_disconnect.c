
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ irq; int * adjust_link; } ;


 int phy_detach (struct phy_device*) ;
 int phy_stop_interrupts (struct phy_device*) ;
 int phy_stop_machine (struct phy_device*) ;

void phy_disconnect(struct phy_device *phydev)
{
 if (phydev->irq > 0)
  phy_stop_interrupts(phydev);

 phy_stop_machine(phydev);

 phydev->adjust_link = ((void*)0);

 phy_detach(phydev);
}
