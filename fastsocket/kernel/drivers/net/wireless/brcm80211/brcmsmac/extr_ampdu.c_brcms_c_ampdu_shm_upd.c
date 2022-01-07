
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_c_info {int hw; } ;
struct ampdu_info {int rx_factor; struct brcms_c_info* wlc; } ;


 int IEEE80211_HT_AMPDU_PARM_FACTOR ;
 int IEEE80211_HT_MAX_AMPDU_64K ;
 int MIMO_MAXSYM_DEF ;
 int MIMO_MAXSYM_MAX ;
 int M_MIMO_MAXSYM ;
 int M_WATCHDOG_8TU ;
 int WATCHDOG_8TU_DEF ;
 int WATCHDOG_8TU_MAX ;
 int brcms_b_write_shm (int ,int ,int ) ;

void brcms_c_ampdu_shm_upd(struct ampdu_info *ampdu)
{
 struct brcms_c_info *wlc = ampdu->wlc;





 if ((ampdu->rx_factor & IEEE80211_HT_AMPDU_PARM_FACTOR) ==
     IEEE80211_HT_MAX_AMPDU_64K) {
  brcms_b_write_shm(wlc->hw, M_MIMO_MAXSYM, MIMO_MAXSYM_MAX);
  brcms_b_write_shm(wlc->hw, M_WATCHDOG_8TU, WATCHDOG_8TU_MAX);
 } else {
  brcms_b_write_shm(wlc->hw, M_MIMO_MAXSYM, MIMO_MAXSYM_DEF);
  brcms_b_write_shm(wlc->hw, M_WATCHDOG_8TU, WATCHDOG_8TU_DEF);
 }
}
