
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_hdr {int seq_ctrl; int addr1; int frame_control; } ;
struct TYPE_4__ {int rxfilter; } ;
struct ath_softc {TYPE_2__ rx; } ;
struct ath_rx_status {scalar_t__ rs_keyix; int rs_status; scalar_t__ rs_datalen; scalar_t__ rs_more; } ;
struct TYPE_3__ {scalar_t__ rx_status_len; } ;
struct ath_hw {scalar_t__ is_monitoring; TYPE_1__ caps; } ;
struct ath_common {scalar_t__ rx_bufsize; int ccmp_keymap; int tkip_keymap; struct ath_hw* ah; scalar_t__ priv; } ;
typedef int __le16 ;


 int ATH9K_RXERR_CRC ;
 int ATH9K_RXERR_DECRYPT ;
 int ATH9K_RXERR_KEYMISS ;
 int ATH9K_RXERR_MIC ;
 int ATH9K_RXERR_PHY ;
 scalar_t__ ATH9K_RXKEYIX_INVALID ;
 int FIF_FCSFAIL ;
 int IEEE80211_SCTL_FRAG ;
 int RX_FLAG_FAILED_FCS_CRC ;
 int RX_FLAG_MMIC_ERROR ;
 int RX_FLAG_MMIC_STRIPPED ;
 int RX_STAT_INC (int ) ;
 int ieee80211_has_morefrags (int ) ;
 scalar_t__ ieee80211_has_protected (int ) ;
 int ieee80211_is_ctl (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;
 int is_multicast_ether_addr (int ) ;
 int le16_to_cpu (int ) ;
 int rx_len_err ;
 scalar_t__ test_bit (scalar_t__,int ) ;

__attribute__((used)) static bool ath9k_rx_accept(struct ath_common *common,
       struct ieee80211_hdr *hdr,
       struct ieee80211_rx_status *rxs,
       struct ath_rx_status *rx_stats,
       bool *decrypt_error)
{
 struct ath_softc *sc = (struct ath_softc *) common->priv;
 bool is_mc, is_valid_tkip, strip_mic, mic_error;
 struct ath_hw *ah = common->ah;
 __le16 fc;
 u8 rx_status_len = ah->caps.rx_status_len;

 fc = hdr->frame_control;

 is_mc = !!is_multicast_ether_addr(hdr->addr1);
 is_valid_tkip = rx_stats->rs_keyix != ATH9K_RXKEYIX_INVALID &&
  test_bit(rx_stats->rs_keyix, common->tkip_keymap);
 strip_mic = is_valid_tkip && ieee80211_is_data(fc) &&
  ieee80211_has_protected(fc) &&
  !(rx_stats->rs_status &
  (ATH9K_RXERR_DECRYPT | ATH9K_RXERR_CRC | ATH9K_RXERR_MIC |
   ATH9K_RXERR_KEYMISS));






 if (rx_stats->rs_keyix == ATH9K_RXKEYIX_INVALID ||
     !test_bit(rx_stats->rs_keyix, common->ccmp_keymap))
  rx_stats->rs_status &= ~ATH9K_RXERR_KEYMISS;

 if (!rx_stats->rs_datalen) {
  RX_STAT_INC(rx_len_err);
  return 0;
 }






 if (rx_stats->rs_datalen > (common->rx_bufsize - rx_status_len)) {
  RX_STAT_INC(rx_len_err);
  return 0;
 }


 if (rx_stats->rs_more)
  return 1;

 mic_error = is_valid_tkip && !ieee80211_is_ctl(fc) &&
  !ieee80211_has_morefrags(fc) &&
  !(le16_to_cpu(hdr->seq_ctrl) & IEEE80211_SCTL_FRAG) &&
  (rx_stats->rs_status & ATH9K_RXERR_MIC);







 if (rx_stats->rs_status != 0) {
  u8 status_mask;

  if (rx_stats->rs_status & ATH9K_RXERR_CRC) {
   rxs->flag |= RX_FLAG_FAILED_FCS_CRC;
   mic_error = 0;
  }
  if (rx_stats->rs_status & ATH9K_RXERR_PHY)
   return 0;

  if ((rx_stats->rs_status & ATH9K_RXERR_DECRYPT) ||
      (!is_mc && (rx_stats->rs_status & ATH9K_RXERR_KEYMISS))) {
   *decrypt_error = 1;
   mic_error = 0;
  }






  status_mask = ATH9K_RXERR_DECRYPT | ATH9K_RXERR_MIC |
         ATH9K_RXERR_KEYMISS;

  if (ah->is_monitoring && (sc->rx.rxfilter & FIF_FCSFAIL))
   status_mask |= ATH9K_RXERR_CRC;

  if (rx_stats->rs_status & ~status_mask)
   return 0;
 }







 if (strip_mic)
  rxs->flag |= RX_FLAG_MMIC_STRIPPED;
 else if (is_mc && mic_error)
  rxs->flag |= RX_FLAG_MMIC_ERROR;

 return 1;
}
