
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int PHY_INTERRUPT_DISABLED ;
 int phy_clear_interrupt (struct phy_device*) ;
 int phy_config_interrupt (struct phy_device*,int ) ;
 int phy_error (struct phy_device*) ;

int phy_disable_interrupts(struct phy_device *phydev)
{
 int err;


 err = phy_config_interrupt(phydev, PHY_INTERRUPT_DISABLED);

 if (err)
  goto phy_err;


 err = phy_clear_interrupt(phydev);

 if (err)
  goto phy_err;

 return 0;

phy_err:
 phy_error(phydev);

 return err;
}
