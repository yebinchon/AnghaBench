
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct brcms_phy_lcnphy {int lcnphy_tssi_tx_cnt; int lcnphy_tssi_npt; int lcnphy_tssi_idx; } ;
struct TYPE_2__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {TYPE_1__ u; } ;


 int wlc_lcnphy_get_current_tx_pwr_idx (struct brcms_phy*) ;
 int wlc_lcnphy_get_tx_pwr_npt (struct brcms_phy*) ;
 int wlc_lcnphy_total_tx_frames (struct brcms_phy*) ;

void wlc_lcnphy_tx_pwr_update_npt(struct brcms_phy *pi)
{
 u16 tx_cnt, tx_total, npt;
 struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

 tx_total = wlc_lcnphy_total_tx_frames(pi);
 tx_cnt = tx_total - pi_lcn->lcnphy_tssi_tx_cnt;
 npt = wlc_lcnphy_get_tx_pwr_npt(pi);

 if (tx_cnt > (1 << npt)) {

  pi_lcn->lcnphy_tssi_tx_cnt = tx_total;

  pi_lcn->lcnphy_tssi_idx = wlc_lcnphy_get_current_tx_pwr_idx(pi);
  pi_lcn->lcnphy_tssi_npt = npt;

 }
}
