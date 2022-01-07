
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int __le16 ;


 scalar_t__ ETH_ALEN ;
 scalar_t__ IEEE80211_QOS_CTL_LEN ;
 scalar_t__ ieee80211_has_a4 (int ) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;

__attribute__((used)) static int ath5k_common_padpos(struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 __le16 frame_control = hdr->frame_control;
 int padpos = 24;

 if (ieee80211_has_a4(frame_control))
  padpos += ETH_ALEN;

 if (ieee80211_is_data_qos(frame_control))
  padpos += IEEE80211_QOS_CTL_LEN;

 return padpos;
}
