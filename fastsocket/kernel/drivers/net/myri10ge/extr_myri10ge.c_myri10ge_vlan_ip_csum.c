
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_hdr {scalar_t__ h_vlan_encapsulated_proto; } ;
struct sk_buff {scalar_t__ protocol; int ip_summed; int csum; scalar_t__ data; } ;
typedef int __wsum ;


 int CHECKSUM_COMPLETE ;
 int ETH_P_8021Q ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static inline void myri10ge_vlan_ip_csum(struct sk_buff *skb, __wsum hw_csum)
{
 struct vlan_hdr *vh = (struct vlan_hdr *)(skb->data);

 if ((skb->protocol == htons(ETH_P_8021Q)) &&
     (vh->h_vlan_encapsulated_proto == htons(ETH_P_IP) ||
      vh->h_vlan_encapsulated_proto == htons(ETH_P_IPV6))) {
  skb->csum = hw_csum;
  skb->ip_summed = CHECKSUM_COMPLETE;
 }
}
