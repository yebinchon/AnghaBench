
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct p54_common {int mode; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_sta {int aid; } ;
struct ieee80211_hdr {int frame_control; } ;


 int IEEE80211_MAX_TIM_LEN ;
 int IEEE80211_TX_CTL_ASSIGN_SEQ ;
 int IEEE80211_TX_CTL_CLEAR_PS_FILT ;
 int IEEE80211_TX_CTL_INJECTED ;
 int IEEE80211_TX_CTL_NO_PS_BUFFER ;
 int IEEE80211_TX_CTL_SEND_AFTER_DTIM ;





 int P54_HDR_FLAG_DATA_OUT_NOCANCEL ;
 int P54_HDR_FLAG_DATA_OUT_PROMISC ;
 int P54_HDR_FLAG_DATA_OUT_SEQNR ;
 int P54_HDR_FLAG_DATA_OUT_TIMESTAMP ;
 scalar_t__ P54_QUEUE_BEACON ;
 scalar_t__ P54_QUEUE_CAB ;
 scalar_t__ P54_QUEUE_DATA ;
 int ieee80211_is_beacon (int ) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 int ieee80211_is_mgmt (int ) ;
 int ieee80211_is_probe_resp (int ) ;
 scalar_t__ skb_get_queue_mapping (struct sk_buff*) ;
 int unlikely (int ) ;

__attribute__((used)) static void p54_tx_80211_header(struct p54_common *priv, struct sk_buff *skb,
    struct ieee80211_tx_info *info,
    struct ieee80211_sta *sta,
    u8 *queue, u32 *extra_len, u16 *flags, u16 *aid,
    bool *burst_possible)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;

 if (ieee80211_is_data_qos(hdr->frame_control))
  *burst_possible = 1;
 else
  *burst_possible = 0;

 if (!(info->flags & IEEE80211_TX_CTL_ASSIGN_SEQ))
  *flags |= P54_HDR_FLAG_DATA_OUT_SEQNR;

 if (info->flags & IEEE80211_TX_CTL_NO_PS_BUFFER)
  *flags |= P54_HDR_FLAG_DATA_OUT_NOCANCEL;

 if (info->flags & IEEE80211_TX_CTL_CLEAR_PS_FILT)
  *flags |= P54_HDR_FLAG_DATA_OUT_NOCANCEL;

 *queue = skb_get_queue_mapping(skb) + P54_QUEUE_DATA;

 switch (priv->mode) {
 case 129:





  *aid = 0;
  *flags |= P54_HDR_FLAG_DATA_OUT_PROMISC;
  break;
 case 128:
  *aid = 1;
  break;
 case 131:
 case 132:
 case 130:
  if (info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM) {
   *aid = 0;
   *queue = P54_QUEUE_CAB;
   return;
  }

  if (unlikely(ieee80211_is_mgmt(hdr->frame_control))) {
   if (ieee80211_is_probe_resp(hdr->frame_control)) {
    *aid = 0;
    *flags |= P54_HDR_FLAG_DATA_OUT_TIMESTAMP |
       P54_HDR_FLAG_DATA_OUT_NOCANCEL;
    return;
   } else if (ieee80211_is_beacon(hdr->frame_control)) {
    *aid = 0;

    if (info->flags & IEEE80211_TX_CTL_INJECTED) {






     return;
    }

    *flags |= P54_HDR_FLAG_DATA_OUT_TIMESTAMP;
    *queue = P54_QUEUE_BEACON;
    *extra_len = IEEE80211_MAX_TIM_LEN;
    return;
   }
  }

  if (sta)
   *aid = sta->aid;
  break;
 }
}
