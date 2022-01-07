
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int* data; int len; } ;


 scalar_t__ cfg80211_find_ie (int,int*,int) ;
 int memmove (int*,int const*,int) ;
 int skb_trim (struct sk_buff*,int) ;

__attribute__((used)) static void wl12xx_remove_ie(struct sk_buff *skb, u8 eid, int ieoffset)
{
 int len;
 const u8 *next, *end = skb->data + skb->len;
 u8 *ie = (u8 *)cfg80211_find_ie(eid, skb->data + ieoffset,
     skb->len - ieoffset);
 if (!ie)
  return;
 len = ie[1] + 2;
 next = ie + len;
 memmove(ie, next, end - next);
 skb_trim(skb, skb->len - len);
}
