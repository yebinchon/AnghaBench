
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int* data; int len; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_hdr {int frame_control; } ;
struct ath_rx_status {int rs_keyix; } ;
struct ath_hw {scalar_t__ sw_mgmt_crypto; } ;
struct ath_common {int keymap; struct ath_hw* ah; } ;
typedef int __le16 ;


 int ATH9K_RXKEYIX_INVALID ;
 int FCS_LEN ;
 int RX_FLAG_DECRYPTED ;
 int ieee80211_get_hdrlen_from_skb (struct sk_buff*) ;
 scalar_t__ ieee80211_has_protected (int ) ;
 int ieee80211_hdrlen (int ) ;
 scalar_t__ ieee80211_is_mgmt (int ) ;
 int memmove (int ,int*,int) ;
 int skb_pull (struct sk_buff*,int) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static void ath9k_rx_skb_postprocess(struct ath_common *common,
         struct sk_buff *skb,
         struct ath_rx_status *rx_stats,
         struct ieee80211_rx_status *rxs,
         bool decrypt_error)
{
 struct ath_hw *ah = common->ah;
 struct ieee80211_hdr *hdr;
 int hdrlen, padpos, padsize;
 u8 keyix;
 __le16 fc;


 hdr = (struct ieee80211_hdr *) skb->data;
 hdrlen = ieee80211_get_hdrlen_from_skb(skb);
 fc = hdr->frame_control;
 padpos = ieee80211_hdrlen(fc);
 padsize = padpos & 3;
 if (padsize && skb->len>=padpos+padsize+FCS_LEN) {
  memmove(skb->data + padsize, skb->data, padpos);
  skb_pull(skb, padsize);
 }

 keyix = rx_stats->rs_keyix;

 if (!(keyix == ATH9K_RXKEYIX_INVALID) && !decrypt_error &&
     ieee80211_has_protected(fc)) {
  rxs->flag |= RX_FLAG_DECRYPTED;
 } else if (ieee80211_has_protected(fc)
     && !decrypt_error && skb->len >= hdrlen + 4) {
  keyix = skb->data[hdrlen + 3] >> 6;

  if (test_bit(keyix, common->keymap))
   rxs->flag |= RX_FLAG_DECRYPTED;
 }
 if (ah->sw_mgmt_crypto &&
     (rxs->flag & RX_FLAG_DECRYPTED) &&
     ieee80211_is_mgmt(fc))

  rxs->flag &= ~RX_FLAG_DECRYPTED;
}
