
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl1251 {scalar_t__ use_eeprom; TYPE_2__* hw; } ;
struct tx_double_buffer_desc {int dummy; } ;
struct TYPE_4__ {int channel_change_time; int flags; int queues; TYPE_1__* wiphy; scalar_t__ extra_tx_headroom; } ;
struct TYPE_3__ {int interface_modes; int max_scan_ssids; int ** bands; } ;


 int BIT (int ) ;
 size_t IEEE80211_BAND_2GHZ ;
 int IEEE80211_HW_SIGNAL_DBM ;
 int IEEE80211_HW_SUPPORTS_PS ;
 int IEEE80211_HW_SUPPORTS_UAPSD ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_STATION ;
 scalar_t__ WL1251_TKIP_IV_SPACE ;
 int wl1251_band_2ghz ;
 int wl1251_debugfs_init (struct wl1251*) ;
 int wl1251_notice (char*) ;
 int wl1251_read_eeprom_mac (struct wl1251*) ;
 int wl1251_register_hw (struct wl1251*) ;

int wl1251_init_ieee80211(struct wl1251 *wl)
{
 int ret;


 wl->hw->extra_tx_headroom = sizeof(struct tx_double_buffer_desc)
  + WL1251_TKIP_IV_SPACE;



 wl->hw->channel_change_time = 10000;

 wl->hw->flags = IEEE80211_HW_SIGNAL_DBM |
  IEEE80211_HW_SUPPORTS_PS |
  IEEE80211_HW_SUPPORTS_UAPSD;

 wl->hw->wiphy->interface_modes = BIT(NL80211_IFTYPE_STATION) |
      BIT(NL80211_IFTYPE_ADHOC);
 wl->hw->wiphy->max_scan_ssids = 1;
 wl->hw->wiphy->bands[IEEE80211_BAND_2GHZ] = &wl1251_band_2ghz;

 wl->hw->queues = 4;

 if (wl->use_eeprom)
  wl1251_read_eeprom_mac(wl);

 ret = wl1251_register_hw(wl);
 if (ret)
  goto out;

 wl1251_debugfs_init(wl);
 wl1251_notice("initialized");

 ret = 0;

out:
 return ret;
}
