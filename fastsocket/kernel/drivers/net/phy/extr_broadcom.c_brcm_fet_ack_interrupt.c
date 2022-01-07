
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_BRCM_FET_INTREG ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int brcm_fet_ack_interrupt(struct phy_device *phydev)
{
 int reg;


 reg = phy_read(phydev, MII_BRCM_FET_INTREG);
 if (reg < 0)
  return reg;

 return 0;
}
