
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int ofdm_rateset_war; } ;



void wlc_phy_ofdm_rateset_war(struct brcms_phy_pub *pih, bool war)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;

 pi->ofdm_rateset_war = war;
}
