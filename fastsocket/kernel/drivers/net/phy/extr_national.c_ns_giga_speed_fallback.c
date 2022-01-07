
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int BMCR_PDOWN ;
 int LED_CTRL_REG ;
 int MII_BMCR ;
 int NS_EXP_MEM_ADD ;
 int NS_EXP_MEM_CTL ;
 int NS_EXP_MEM_DATA ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static void ns_giga_speed_fallback(struct phy_device *phydev, int mode)
{
 int bmcr = phy_read(phydev, MII_BMCR);

 phy_write(phydev, MII_BMCR, (bmcr | BMCR_PDOWN));


 phy_write(phydev, NS_EXP_MEM_CTL, 0);
 phy_write(phydev, NS_EXP_MEM_ADD, 0x1C0);
 phy_write(phydev, NS_EXP_MEM_DATA, 0x0008);
 phy_write(phydev, MII_BMCR, (bmcr & ~BMCR_PDOWN));
 phy_write(phydev, LED_CTRL_REG, mode);
 return;
}
