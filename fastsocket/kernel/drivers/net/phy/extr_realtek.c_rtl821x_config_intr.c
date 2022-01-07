
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int RTL821x_INER ;
 int RTL821x_INER_INIT ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int rtl821x_config_intr(struct phy_device *phydev)
{
 int err;

 if (phydev->interrupts == PHY_INTERRUPT_ENABLED)
  err = phy_write(phydev, RTL821x_INER,
    RTL821x_INER_INIT);
 else
  err = phy_write(phydev, RTL821x_INER, 0);

 return err;
}
