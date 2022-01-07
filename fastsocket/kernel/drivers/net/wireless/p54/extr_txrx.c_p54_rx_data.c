
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct p54_rx_data {int rate; int flags; scalar_t__ decrypt_status; int len; scalar_t__* align; int tsf32; int antenna; int rssi; int freq; } ;
struct p54_common {scalar_t__ mode; int tsf_low32; int work; TYPE_4__* hw; scalar_t__ tsf_high32; } ;
struct ieee80211_rx_status {int rate_idx; scalar_t__ band; int mactime; int flag; int antenna; int freq; int signal; } ;
struct TYPE_7__ {TYPE_1__* chan; } ;
struct TYPE_8__ {int flags; TYPE_2__ chandef; } ;
struct TYPE_9__ {TYPE_3__ conf; } ;
struct TYPE_6__ {scalar_t__ band; } ;


 scalar_t__ IEEE80211_BAND_5GHZ ;
 int IEEE80211_CONF_PS ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ;
 scalar_t__ P54_DECRYPT_FAIL_MICHAEL ;
 scalar_t__ P54_DECRYPT_FAIL_TKIP ;
 scalar_t__ P54_DECRYPT_OK ;
 int P54_HDR_FLAG_DATA_ALIGN ;
 int P54_HDR_FLAG_DATA_IN_FCS_GOOD ;
 int P54_STATISTICS_UPDATE ;
 int RX_FLAG_DECRYPTED ;
 int RX_FLAG_MACTIME_END ;
 int RX_FLAG_MMIC_ERROR ;
 int RX_FLAG_SHORTPRE ;
 int cpu_to_le16 (int ) ;
 int ieee80211_queue_delayed_work (TYPE_4__*,int *,int ) ;
 int ieee80211_rx_irqsafe (TYPE_4__*,struct sk_buff*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int msecs_to_jiffies (int ) ;
 int p54_pspoll_workaround (struct p54_common*,struct sk_buff*) ;
 int p54_rssi_to_dbm (struct p54_common*,int ) ;
 int skb_pull (struct sk_buff*,size_t) ;
 int skb_trim (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int p54_rx_data(struct p54_common *priv, struct sk_buff *skb)
{
 struct p54_rx_data *hdr = (struct p54_rx_data *) skb->data;
 struct ieee80211_rx_status *rx_status = IEEE80211_SKB_RXCB(skb);
 u16 freq = le16_to_cpu(hdr->freq);
 size_t header_len = sizeof(*hdr);
 u32 tsf32;
 u8 rate = hdr->rate & 0xf;






 if (unlikely(priv->mode == NL80211_IFTYPE_UNSPECIFIED))
  return 0;

 if (!(hdr->flags & cpu_to_le16(P54_HDR_FLAG_DATA_IN_FCS_GOOD)))
  return 0;

 if (hdr->decrypt_status == P54_DECRYPT_OK)
  rx_status->flag |= RX_FLAG_DECRYPTED;
 if ((hdr->decrypt_status == P54_DECRYPT_FAIL_MICHAEL) ||
     (hdr->decrypt_status == P54_DECRYPT_FAIL_TKIP))
  rx_status->flag |= RX_FLAG_MMIC_ERROR;

 rx_status->signal = p54_rssi_to_dbm(priv, hdr->rssi);
 if (hdr->rate & 0x10)
  rx_status->flag |= RX_FLAG_SHORTPRE;
 if (priv->hw->conf.chandef.chan->band == IEEE80211_BAND_5GHZ)
  rx_status->rate_idx = (rate < 4) ? 0 : rate - 4;
 else
  rx_status->rate_idx = rate;

 rx_status->freq = freq;
 rx_status->band = priv->hw->conf.chandef.chan->band;
 rx_status->antenna = hdr->antenna;

 tsf32 = le32_to_cpu(hdr->tsf32);
 if (tsf32 < priv->tsf_low32)
  priv->tsf_high32++;
 rx_status->mactime = ((u64)priv->tsf_high32) << 32 | tsf32;
 priv->tsf_low32 = tsf32;





 rx_status->flag |= RX_FLAG_MACTIME_END;

 if (hdr->flags & cpu_to_le16(P54_HDR_FLAG_DATA_ALIGN))
  header_len += hdr->align[0];

 skb_pull(skb, header_len);
 skb_trim(skb, le16_to_cpu(hdr->len));
 if (unlikely(priv->hw->conf.flags & IEEE80211_CONF_PS))
  p54_pspoll_workaround(priv, skb);

 ieee80211_rx_irqsafe(priv->hw, skb);

 ieee80211_queue_delayed_work(priv->hw, &priv->work,
      msecs_to_jiffies(P54_STATISTICS_UPDATE));

 return -1;
}
