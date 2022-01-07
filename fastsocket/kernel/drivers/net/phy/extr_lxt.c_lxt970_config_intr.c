
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 int MII_LXT970_IER ;
 int MII_LXT970_IER_IEN ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int lxt970_config_intr(struct phy_device *phydev)
{
 int err;

 if(phydev->interrupts == PHY_INTERRUPT_ENABLED)
  err = phy_write(phydev, MII_LXT970_IER, MII_LXT970_IER_IEN);
 else
  err = phy_write(phydev, MII_LXT970_IER, 0);

 return err;
}
