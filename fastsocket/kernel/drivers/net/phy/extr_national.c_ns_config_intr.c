
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 int DP83865_INT_MASK_DEFAULT ;
 int DP83865_INT_MASK_REG ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int ns_config_intr(struct phy_device *phydev)
{
 int err;

 if (phydev->interrupts == PHY_INTERRUPT_ENABLED)
  err = phy_write(phydev, DP83865_INT_MASK_REG,
    DP83865_INT_MASK_DEFAULT);
 else
  err = phy_write(phydev, DP83865_INT_MASK_REG, 0);

 return err;
}
