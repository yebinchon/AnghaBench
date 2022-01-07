
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int tx_power_min; } ;



u8 wlc_phy_txpower_get_target_min(struct brcms_phy_pub *ppi)
{
 struct brcms_phy *pi = (struct brcms_phy *) ppi;

 return pi->tx_power_min;
}
