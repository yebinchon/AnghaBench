
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct phy_device {int supported; int duplex; int speed; int autoneg; } ;
struct TYPE_2__ {int duplex; int speed; } ;


 int AUTONEG_DISABLE ;
 int SUPPORTED_Autoneg ;
 int phy_find_setting (int ,int ) ;
 int phy_find_valid (int ,int) ;
 TYPE_1__* settings ;

void phy_sanitize_settings(struct phy_device *phydev)
{
 u32 features = phydev->supported;
 int idx;


 if ((features & SUPPORTED_Autoneg) == 0)
  phydev->autoneg = AUTONEG_DISABLE;

 idx = phy_find_valid(phy_find_setting(phydev->speed, phydev->duplex),
   features);

 phydev->speed = settings[idx].speed;
 phydev->duplex = settings[idx].duplex;
}
