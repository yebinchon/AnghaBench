
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct wl1251 {scalar_t__ state; int mutex; int rx_filter; int rx_config; int bssid; } ;
struct ieee80211_hw {struct wl1251* priv; } ;


 int CFG_BSSID_FILTER_EN ;
 int CFG_MC_FILTER_EN ;
 int CFG_RX_ALL_GOOD ;
 int CFG_RX_CTL_EN ;
 int CFG_RX_FCS_ERROR ;
 int CFG_RX_PREQ_EN ;
 int CFG_SSID_FILTER_EN ;
 int DEBUG_MAC80211 ;
 unsigned int FIF_ALLMULTI ;
 unsigned int FIF_BCN_PRBRESP_PROMISC ;
 unsigned int FIF_CONTROL ;
 unsigned int FIF_FCSFAIL ;
 unsigned int FIF_OTHER_BSS ;
 unsigned int FIF_PROBE_REQ ;
 unsigned int FIF_PROMISC_IN_BSS ;
 int WL1251_DEFAULT_RX_CONFIG ;
 int WL1251_DEFAULT_RX_FILTER ;
 scalar_t__ WL1251_STATE_OFF ;
 unsigned int WL1251_SUPPORTED_FILTERS ;
 scalar_t__ is_zero_ether_addr (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wl1251_acx_rx_config (struct wl1251*,int ,int ) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_ps_elp_sleep (struct wl1251*) ;
 int wl1251_ps_elp_wakeup (struct wl1251*) ;

__attribute__((used)) static void wl1251_op_configure_filter(struct ieee80211_hw *hw,
           unsigned int changed,
           unsigned int *total,u64 multicast)
{
 struct wl1251 *wl = hw->priv;
 int ret;

 wl1251_debug(DEBUG_MAC80211, "mac80211 configure filter");

 *total &= WL1251_SUPPORTED_FILTERS;
 changed &= WL1251_SUPPORTED_FILTERS;

 if (changed == 0)

  return;

 mutex_lock(&wl->mutex);

 wl->rx_config = WL1251_DEFAULT_RX_CONFIG;
 wl->rx_filter = WL1251_DEFAULT_RX_FILTER;

 if (*total & FIF_PROMISC_IN_BSS) {
  wl->rx_config |= CFG_BSSID_FILTER_EN;
  wl->rx_config |= CFG_RX_ALL_GOOD;
 }
 if (*total & FIF_ALLMULTI)




  wl->rx_config &= ~CFG_MC_FILTER_EN;
 if (*total & FIF_FCSFAIL)
  wl->rx_filter |= CFG_RX_FCS_ERROR;
 if (*total & FIF_BCN_PRBRESP_PROMISC) {
  wl->rx_config &= ~CFG_BSSID_FILTER_EN;
  wl->rx_config &= ~CFG_SSID_FILTER_EN;
 }
 if (*total & FIF_CONTROL)
  wl->rx_filter |= CFG_RX_CTL_EN;
 if (*total & FIF_OTHER_BSS || is_zero_ether_addr(wl->bssid))
  wl->rx_config &= ~CFG_BSSID_FILTER_EN;
 if (*total & FIF_PROBE_REQ)
  wl->rx_filter |= CFG_RX_PREQ_EN;

 if (wl->state == WL1251_STATE_OFF)
  goto out;

 ret = wl1251_ps_elp_wakeup(wl);
 if (ret < 0)
  goto out;


 wl1251_acx_rx_config(wl, wl->rx_config, wl->rx_filter);

 wl1251_ps_elp_sleep(wl);

out:
 mutex_unlock(&wl->mutex);
}
