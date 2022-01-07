
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mwl8k_rxd_sta {int rx_ctrl; int channel; int pkt_len; int qos_control; int noise_level; int rssi; int rate_info; } ;
struct ieee80211_rx_status {int rate_idx; int flag; int band; int freq; int antenna; int signal; } ;
typedef int s8 ;
typedef int __le16 ;


 int IEEE80211_BAND_2GHZ ;
 int IEEE80211_BAND_5GHZ ;
 int MWL8K_STA_RATE_INFO_40MHZ ;
 int MWL8K_STA_RATE_INFO_ANTSELECT (int) ;
 int MWL8K_STA_RATE_INFO_MCS_FORMAT ;
 int MWL8K_STA_RATE_INFO_RATEID (int) ;
 int MWL8K_STA_RATE_INFO_SHORTGI ;
 int MWL8K_STA_RATE_INFO_SHORTPRE ;
 int MWL8K_STA_RX_CTRL_DECRYPT_ERROR ;
 int MWL8K_STA_RX_CTRL_DEC_ERR_TYPE ;
 int MWL8K_STA_RX_CTRL_OWNED_BY_HOST ;
 int RX_FLAG_40MHZ ;
 int RX_FLAG_HT ;
 int RX_FLAG_MMIC_ERROR ;
 int RX_FLAG_SHORTPRE ;
 int RX_FLAG_SHORT_GI ;
 int ieee80211_channel_to_frequency (int,int ) ;
 int le16_to_cpu (int ) ;
 int memset (struct ieee80211_rx_status*,int ,int) ;
 int rmb () ;

__attribute__((used)) static int
mwl8k_rxd_sta_process(void *_rxd, struct ieee80211_rx_status *status,
         __le16 *qos, s8 *noise)
{
 struct mwl8k_rxd_sta *rxd = _rxd;
 u16 rate_info;

 if (!(rxd->rx_ctrl & MWL8K_STA_RX_CTRL_OWNED_BY_HOST))
  return -1;
 rmb();

 rate_info = le16_to_cpu(rxd->rate_info);

 memset(status, 0, sizeof(*status));

 status->signal = -rxd->rssi;
 *noise = -rxd->noise_level;
 status->antenna = MWL8K_STA_RATE_INFO_ANTSELECT(rate_info);
 status->rate_idx = MWL8K_STA_RATE_INFO_RATEID(rate_info);

 if (rate_info & MWL8K_STA_RATE_INFO_SHORTPRE)
  status->flag |= RX_FLAG_SHORTPRE;
 if (rate_info & MWL8K_STA_RATE_INFO_40MHZ)
  status->flag |= RX_FLAG_40MHZ;
 if (rate_info & MWL8K_STA_RATE_INFO_SHORTGI)
  status->flag |= RX_FLAG_SHORT_GI;
 if (rate_info & MWL8K_STA_RATE_INFO_MCS_FORMAT)
  status->flag |= RX_FLAG_HT;

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
 if ((rxd->rx_ctrl & MWL8K_STA_RX_CTRL_DECRYPT_ERROR) &&
     (rxd->rx_ctrl & MWL8K_STA_RX_CTRL_DEC_ERR_TYPE))
  status->flag |= RX_FLAG_MMIC_ERROR;

 return le16_to_cpu(rxd->pkt_len);
}
