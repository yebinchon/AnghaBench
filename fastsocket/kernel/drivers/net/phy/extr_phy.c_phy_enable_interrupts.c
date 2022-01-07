
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int PHY_INTERRUPT_ENABLED ;
 int phy_clear_interrupt (struct phy_device*) ;
 int phy_config_interrupt (struct phy_device*,int ) ;

int phy_enable_interrupts(struct phy_device *phydev)
{
 int err;

 err = phy_clear_interrupt(phydev);

 if (err < 0)
  return err;

 err = phy_config_interrupt(phydev, PHY_INTERRUPT_ENABLED);

 return err;
}
