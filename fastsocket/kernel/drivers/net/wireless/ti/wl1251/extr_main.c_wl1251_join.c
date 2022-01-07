
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wl1251 {int rx_config; int bssid; int tx_mgmt_frm_mod; int tx_mgmt_frm_rate; } ;


 int CFG_BSSID_FILTER_EN ;
 int DEFAULT_HW_GEN_MODULATION_TYPE ;
 int DEFAULT_HW_GEN_TX_RATE ;
 int JOIN_EVENT_COMPLETE_ID ;
 scalar_t__ is_zero_ether_addr (int ) ;
 int wl1251_acx_frame_rates (struct wl1251*,int ,int ,int ,int ) ;
 int wl1251_cmd_join (struct wl1251*,int ,int ,int ,int ) ;
 int wl1251_event_wait (struct wl1251*,int ,int) ;
 int wl1251_warning (char*) ;

__attribute__((used)) static int wl1251_join(struct wl1251 *wl, u8 bss_type, u8 channel,
         u16 beacon_interval, u8 dtim_period)
{
 int ret;

 ret = wl1251_acx_frame_rates(wl, DEFAULT_HW_GEN_TX_RATE,
         DEFAULT_HW_GEN_MODULATION_TYPE,
         wl->tx_mgmt_frm_rate,
         wl->tx_mgmt_frm_mod);
 if (ret < 0)
  goto out;





 if (is_zero_ether_addr(wl->bssid))
  wl->rx_config &= ~CFG_BSSID_FILTER_EN;

 ret = wl1251_cmd_join(wl, bss_type, channel, beacon_interval,
         dtim_period);
 if (ret < 0)
  goto out;

 ret = wl1251_event_wait(wl, JOIN_EVENT_COMPLETE_ID, 100);
 if (ret < 0)
  wl1251_warning("join timeout");

out:
 return ret;
}
