
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mwl8k_rxd_ap {int rx_ctrl; int rate; int channel; int rx_status; int pkt_len; int qos_control; int noise_floor; int rssi; } ;
struct ieee80211_rx_status {int flag; int rate_idx; int band; int freq; int signal; } ;
typedef int s8 ;
typedef int __le16 ;
struct TYPE_3__ {int hw_value; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int IEEE80211_BAND_2GHZ ;
 int IEEE80211_BAND_5GHZ ;
 int MWL8K_AP_RATE_INFO_40MHZ ;
 int MWL8K_AP_RATE_INFO_MCS_FORMAT ;
 int MWL8K_AP_RATE_INFO_RATEID (int) ;
 int MWL8K_AP_RXSTAT_DECRYPT_ERR_MASK ;
 int MWL8K_AP_RXSTAT_GENERAL_DECRYPT_ERR ;
 int MWL8K_AP_RXSTAT_TKIP_DECRYPT_MIC_ERR ;
 int MWL8K_AP_RX_CTRL_OWNED_BY_HOST ;
 int RX_FLAG_40MHZ ;
 int RX_FLAG_HT ;
 int RX_FLAG_MMIC_ERROR ;
 int ieee80211_channel_to_frequency (int,int ) ;
 int le16_to_cpu (int ) ;
 int memset (struct ieee80211_rx_status*,int ,int) ;
 TYPE_1__* mwl8k_rates_24 ;
 int rmb () ;

__attribute__((used)) static int
mwl8k_rxd_ap_process(void *_rxd, struct ieee80211_rx_status *status,
       __le16 *qos, s8 *noise)
{
 struct mwl8k_rxd_ap *rxd = _rxd;

 if (!(rxd->rx_ctrl & MWL8K_AP_RX_CTRL_OWNED_BY_HOST))
  return -1;
 rmb();

 memset(status, 0, sizeof(*status));

 status->signal = -rxd->rssi;
 *noise = -rxd->noise_floor;

 if (rxd->rate & MWL8K_AP_RATE_INFO_MCS_FORMAT) {
  status->flag |= RX_FLAG_HT;
  if (rxd->rate & MWL8K_AP_RATE_INFO_40MHZ)
   status->flag |= RX_FLAG_40MHZ;
  status->rate_idx = MWL8K_AP_RATE_INFO_RATEID(rxd->rate);
 } else {
  int i;

  for (i = 0; i < ARRAY_SIZE(mwl8k_rates_24); i++) {
   if (mwl8k_rates_24[i].hw_value == rxd->rate) {
    status->rate_idx = i;
    break;
   }
  }
 }

 if (rxd->channel > 14) {
  status->band = IEEE80211_BAND_5GHZ;
  if (!(status->flag & RX_FLAG_HT))
   status->rate_idx -= 5;
 } else {
  status->band = IEEE80211_BAND_2GHZ;
 }
 status->freq = ieee80211_channel_to_frequency(rxd->channel,
            status->band);

 *qos = rxd->qos_control;

 if ((rxd->rx_status != MWL8K_AP_RXSTAT_GENERAL_DECRYPT_ERR) &&
     (rxd->rx_status & MWL8K_AP_RXSTAT_DECRYPT_ERR_MASK) &&
     (rxd->rx_status & MWL8K_AP_RXSTAT_TKIP_DECRYPT_MIC_ERR))
  status->flag |= RX_FLAG_MMIC_ERROR;

 return le16_to_cpu(rxd->pkt_len);
}
