
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {int duplex; int speed; int supported; } ;
struct TYPE_2__ {int duplex; int speed; } ;


 int DUPLEX_FULL ;
 int phy_find_setting (int ,int ) ;
 int phy_find_valid (int,int ) ;
 int pr_info (char*,int ,char*) ;
 TYPE_1__* settings ;

__attribute__((used)) static void phy_force_reduction(struct phy_device *phydev)
{
 int idx;

 idx = phy_find_setting(phydev->speed, phydev->duplex);

 idx++;

 idx = phy_find_valid(idx, phydev->supported);

 phydev->speed = settings[idx].speed;
 phydev->duplex = settings[idx].duplex;

 pr_info("Trying %d/%s\n", phydev->speed,
   DUPLEX_FULL == phydev->duplex ?
   "FULL" : "HALF");
}
