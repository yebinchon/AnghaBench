
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int bw; } ;



void wlc_phy_bw_state_set(struct brcms_phy_pub *ppi, u16 bw)
{
 struct brcms_phy *pi = (struct brcms_phy *) ppi;

 pi->bw = bw;
}
