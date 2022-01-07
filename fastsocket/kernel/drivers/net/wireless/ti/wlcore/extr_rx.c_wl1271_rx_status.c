
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wl1271_rx_descriptor {int flags; scalar_t__ rate; int snr; int status; scalar_t__ channel; scalar_t__ rssi; } ;
struct wl1271 {scalar_t__ hw_min_ht_rate; scalar_t__ noise; } ;
struct ieee80211_rx_status {int flag; int band; int freq; scalar_t__ signal; int rate_idx; } ;


 int IEEE80211_BAND_2GHZ ;
 int IEEE80211_BAND_5GHZ ;
 int RX_FLAG_DECRYPTED ;
 int RX_FLAG_HT ;
 int RX_FLAG_IV_STRIPPED ;
 int RX_FLAG_MMIC_ERROR ;
 int RX_FLAG_MMIC_STRIPPED ;
 int WL1271_RX_DESC_BAND_BG ;
 int WL1271_RX_DESC_BAND_MASK ;
 int WL1271_RX_DESC_ENCRYPT_MASK ;
 int WL1271_RX_DESC_MIC_FAIL ;
 int WL1271_RX_DESC_STATUS_MASK ;
 int ieee80211_channel_to_frequency (scalar_t__,int ) ;
 int memset (struct ieee80211_rx_status*,int ,int) ;
 scalar_t__ unlikely (int) ;
 int wl1271_warning (char*,int) ;
 int wlcore_rate_to_idx (struct wl1271*,scalar_t__,int ) ;
 int wlcore_set_pending_regdomain_ch (struct wl1271*,int ,int ) ;

__attribute__((used)) static void wl1271_rx_status(struct wl1271 *wl,
        struct wl1271_rx_descriptor *desc,
        struct ieee80211_rx_status *status,
        u8 beacon)
{
 memset(status, 0, sizeof(struct ieee80211_rx_status));

 if ((desc->flags & WL1271_RX_DESC_BAND_MASK) == WL1271_RX_DESC_BAND_BG)
  status->band = IEEE80211_BAND_2GHZ;
 else
  status->band = IEEE80211_BAND_5GHZ;

 status->rate_idx = wlcore_rate_to_idx(wl, desc->rate, status->band);


 if (desc->rate <= wl->hw_min_ht_rate)
  status->flag |= RX_FLAG_HT;

 status->signal = desc->rssi;






 wl->noise = desc->rssi - (desc->snr >> 1);

 status->freq = ieee80211_channel_to_frequency(desc->channel,
            status->band);

 if (desc->flags & WL1271_RX_DESC_ENCRYPT_MASK) {
  u8 desc_err_code = desc->status & WL1271_RX_DESC_STATUS_MASK;

  status->flag |= RX_FLAG_IV_STRIPPED | RX_FLAG_MMIC_STRIPPED |
    RX_FLAG_DECRYPTED;

  if (unlikely(desc_err_code & WL1271_RX_DESC_MIC_FAIL)) {
   status->flag |= RX_FLAG_MMIC_ERROR;
   wl1271_warning("Michael MIC error. Desc: 0x%x",
           desc_err_code);
  }
 }

 if (beacon)
  wlcore_set_pending_regdomain_ch(wl, (u16)desc->channel,
      status->band);
}
