
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct eth1394hdr {int dummy; } ;


 scalar_t__ skb_mac_header (struct sk_buff const*) ;

__attribute__((used)) static inline struct eth1394hdr *eth1394_hdr(const struct sk_buff *skb)
{
 return (struct eth1394hdr *)skb_mac_header(skb);
}
