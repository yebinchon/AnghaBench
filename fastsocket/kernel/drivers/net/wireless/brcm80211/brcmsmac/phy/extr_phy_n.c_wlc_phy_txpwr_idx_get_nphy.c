
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct brcms_phy {TYPE_1__* nphy_txpwrindex; } ;
struct TYPE_2__ {int index_internal; } ;


 size_t PHY_CORE_0 ;
 size_t PHY_CORE_1 ;
 int wlc_phy_txpwr_idx_cur_get_nphy (struct brcms_phy*,size_t) ;
 scalar_t__ wlc_phy_txpwr_ison_nphy (struct brcms_phy*) ;

u16 wlc_phy_txpwr_idx_get_nphy(struct brcms_phy *pi)
{
 u16 tmp;
 u16 pwr_idx[2];

 if (wlc_phy_txpwr_ison_nphy(pi)) {
  pwr_idx[0] = wlc_phy_txpwr_idx_cur_get_nphy(pi, PHY_CORE_0);
  pwr_idx[1] = wlc_phy_txpwr_idx_cur_get_nphy(pi, PHY_CORE_1);

  tmp = (pwr_idx[0] << 8) | pwr_idx[1];
 } else {
  tmp = ((pi->nphy_txpwrindex[PHY_CORE_0].index_internal & 0xff)
   << 8) |
   (pi->nphy_txpwrindex[PHY_CORE_1].index_internal & 0xff);
 }

 return tmp;
}
