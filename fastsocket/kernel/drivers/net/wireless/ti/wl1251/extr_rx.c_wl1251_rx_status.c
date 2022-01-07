
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
struct wl1251_rx_descriptor {int snr; int flags; int rate; int mod_pre; int channel; scalar_t__ rssi; int timestamp; } ;
struct wl1251 {scalar_t__ bss_type; scalar_t__ noise; } ;
struct ieee80211_rx_status {int flag; int rate_idx; int band; int freq; scalar_t__ signal; int mactime; } ;


 scalar_t__ BSS_TYPE_IBSS ;
 int IEEE80211_BAND_2GHZ ;
 int OFDM_RATE_BIT ;


 int RATE_1MBPS ;
 int RX_DESC_DECRYPT_FAIL ;
 int RX_DESC_ENCRYPTION_MASK ;
 int RX_DESC_MIC_FAIL ;
 int RX_DESC_VALID_FCS ;
 int RX_FLAG_DECRYPTED ;
 int RX_FLAG_FAILED_FCS_CRC ;
 int RX_FLAG_IV_STRIPPED ;
 int RX_FLAG_MACTIME_START ;
 int RX_FLAG_MMIC_ERROR ;
 int RX_FLAG_MMIC_STRIPPED ;
 int RX_FLAG_SHORTPRE ;
 int SHORT_PREAMBLE_BIT ;
 int ieee80211_channel_to_frequency (int ,int ) ;
 scalar_t__ likely (int) ;
 int memset (struct ieee80211_rx_status*,int ,int) ;
 scalar_t__ unlikely (int) ;
 int wl1251_acx_tsf_info (struct wl1251*,int *) ;

__attribute__((used)) static void wl1251_rx_status(struct wl1251 *wl,
        struct wl1251_rx_descriptor *desc,
        struct ieee80211_rx_status *status,
        u8 beacon)
{
 u64 mactime;
 int ret;

 memset(status, 0, sizeof(struct ieee80211_rx_status));

 status->band = IEEE80211_BAND_2GHZ;
 status->mactime = desc->timestamp;
 if ((wl->bss_type == BSS_TYPE_IBSS) && beacon) {
  ret = wl1251_acx_tsf_info(wl, &mactime);
  if (ret == 0)
   status->mactime = mactime;
 }

 status->signal = desc->rssi;





 wl->noise = desc->rssi - desc->snr / 2;

 status->freq = ieee80211_channel_to_frequency(desc->channel,
            status->band);

 status->flag |= RX_FLAG_MACTIME_START;

 if (desc->flags & RX_DESC_ENCRYPTION_MASK) {
  status->flag |= RX_FLAG_IV_STRIPPED | RX_FLAG_MMIC_STRIPPED;

  if (likely(!(desc->flags & RX_DESC_DECRYPT_FAIL)))
   status->flag |= RX_FLAG_DECRYPTED;

  if (unlikely(desc->flags & RX_DESC_MIC_FAIL))
   status->flag |= RX_FLAG_MMIC_ERROR;
 }

 if (unlikely(!(desc->flags & RX_DESC_VALID_FCS)))
  status->flag |= RX_FLAG_FAILED_FCS_CRC;

 switch (desc->rate) {

 case 134:
  status->rate_idx = 1;
  break;
 case 130:
  status->rate_idx = 2;
  break;
 case 137:
  status->rate_idx = 3;
  break;
 case 129:
  status->rate_idx = 4;
  break;
 case 128:
  status->rate_idx = 5;
  break;
 case 136:
  status->rate_idx = 7;
  break;
 case 135:
  status->rate_idx = 8;
  break;
 case 133:
  status->rate_idx = 9;
  break;
 case 132:
  status->rate_idx = 10;
  break;
 case 131:
  status->rate_idx = 11;
  break;
 }


 if (desc->rate == RATE_1MBPS) {
  if (!(desc->mod_pre & OFDM_RATE_BIT))

   status->rate_idx = 0;
  else

   status->rate_idx = 6;
 }

 if (desc->mod_pre & SHORT_PREAMBLE_BIT)
  status->flag |= RX_FLAG_SHORTPRE;
}
