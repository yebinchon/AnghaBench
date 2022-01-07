
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct ieee80211_hdr {int frame_control; } ;


 int ieee80211_is_data_present (int ) ;

__attribute__((used)) static bool wl1271_tx_is_data_present(struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)(skb->data);

 return ieee80211_is_data_present(hdr->frame_control);
}
