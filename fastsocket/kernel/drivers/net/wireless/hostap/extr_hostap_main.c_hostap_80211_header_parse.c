
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int ETH_ALEN ;
 int memcpy (unsigned char*,scalar_t__,int) ;
 scalar_t__ skb_mac_header (struct sk_buff const*) ;

__attribute__((used)) static int hostap_80211_header_parse(const struct sk_buff *skb,
         unsigned char *haddr)
{
 memcpy(haddr, skb_mac_header(skb) + 10, ETH_ALEN);
 return ETH_ALEN;
}
