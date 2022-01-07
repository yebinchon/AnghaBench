
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int antsel_type; } ;



void wlc_phy_antsel_type_set(struct brcms_phy_pub *ppi, u8 antsel_type)
{
 struct brcms_phy *pi = (struct brcms_phy *) ppi;

 pi->antsel_type = antsel_type;
}
