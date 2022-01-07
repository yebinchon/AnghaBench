
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int do_initcal; } ;



void wlc_phy_initcal_enable(struct brcms_phy_pub *pih, bool initcal)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;

 pi->do_initcal = initcal;
}
