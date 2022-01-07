
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int txpwr_percent; } ;



void wlc_phy_txpwr_percent_set(struct brcms_phy_pub *ppi, u8 txpwr_percent)
{
 struct brcms_phy *pi = (struct brcms_phy *) ppi;

 pi->txpwr_percent = txpwr_percent;
}
