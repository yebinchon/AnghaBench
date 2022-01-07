
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ protocol; scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct iphdr {int saddr; int daddr; } ;
struct ethhdr {int* h_dest; int* h_source; } ;


 int ETH_P_IP ;
 scalar_t__ htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ntohl (int) ;

__attribute__((used)) static int bond_xmit_hash_policy_l23(struct sk_buff *skb,
         struct net_device *bond_dev, int count)
{
 struct ethhdr *data = (struct ethhdr *)skb->data;
 struct iphdr *iph = ip_hdr(skb);

 if (skb->protocol == htons(ETH_P_IP)) {
  return ((ntohl(iph->saddr ^ iph->daddr) & 0xffff) ^
   (data->h_dest[5] ^ data->h_source[5])) % count;
 }

 return (data->h_dest[5] ^ data->h_source[5]) % count;
}
