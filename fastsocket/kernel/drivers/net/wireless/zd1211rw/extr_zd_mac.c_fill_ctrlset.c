
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zd_mac {int chip; int hw; } ;
struct zd_ctrlset {scalar_t__ next_frame_length; void* current_length; void* tx_length; int modulation; scalar_t__ service; void* packet_length; } ;
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {TYPE_2__ control; } ;
struct ieee80211_rate {int hw_value_short; int hw_value; } ;
struct ieee80211_hdr {int dummy; } ;
struct TYPE_3__ {int flags; } ;


 unsigned int FCS_LEN ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_RC_USE_SHORT_PREAMBLE ;
 int ZD_ASSERT (int) ;
 int ZD_RATE (int ) ;
 void* cpu_to_le16 (int) ;
 int cs_set_control (struct zd_mac*,struct zd_ctrlset*,struct ieee80211_hdr*,struct ieee80211_tx_info*) ;
 struct ieee80211_rate* ieee80211_get_tx_rate (int ,struct ieee80211_tx_info*) ;
 int le16_to_cpu (void*) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int zd_calc_tx_length_us (scalar_t__*,int ,int ) ;
 scalar_t__ zd_chip_is_zd1211b (int *) ;

__attribute__((used)) static int fill_ctrlset(struct zd_mac *mac,
   struct sk_buff *skb)
{
 int r;
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
 unsigned int frag_len = skb->len + FCS_LEN;
 unsigned int packet_length;
 struct ieee80211_rate *txrate;
 struct zd_ctrlset *cs = (struct zd_ctrlset *)
  skb_push(skb, sizeof(struct zd_ctrlset));
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);

 ZD_ASSERT(frag_len <= 0xffff);

 txrate = ieee80211_get_tx_rate(mac->hw, info);

 cs->modulation = txrate->hw_value;
 if (info->control.rates[0].flags & IEEE80211_TX_RC_USE_SHORT_PREAMBLE)
  cs->modulation = txrate->hw_value_short;

 cs->tx_length = cpu_to_le16(frag_len);

 cs_set_control(mac, cs, hdr, info);

 packet_length = frag_len + sizeof(struct zd_ctrlset) + 10;
 ZD_ASSERT(packet_length <= 0xffff);



 cs->packet_length = cpu_to_le16(zd_chip_is_zd1211b(&mac->chip) ?
   packet_length - frag_len : packet_length);
 cs->service = 0;
 r = zd_calc_tx_length_us(&cs->service, ZD_RATE(cs->modulation),
                   le16_to_cpu(cs->tx_length));
 if (r < 0)
  return r;
 cs->current_length = cpu_to_le16(r);
 cs->next_frame_length = 0;

 return 0;
}
