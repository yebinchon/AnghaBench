
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ protocol; scalar_t__ data; } ;
struct ieee80211_hdr {int frame_control; } ;


 int ETH_P_PAE ;
 scalar_t__ cpu_to_be16 (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;

__attribute__((used)) static inline bool iwl_trace_data(struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (void *)skb->data;

 if (ieee80211_is_data(hdr->frame_control))
  return skb->protocol != cpu_to_be16(ETH_P_PAE);
 return 0;
}
