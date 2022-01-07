
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vlan_hdr {scalar_t__ h_vlan_encapsulated_proto; } ;
struct udphdr {int dummy; } ;
struct tcphdr {int dummy; } ;
struct ipv6hdr {int nexthdr; } ;
struct iphdr {int frag_off; int protocol; } ;
struct ethhdr {scalar_t__ h_proto; } ;
typedef scalar_t__ __be16 ;


 unsigned int ETH_HLEN ;
 int ETH_P_8021Q ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int IP_OFFSET ;
 unsigned int VLAN_HLEN ;
 scalar_t__ __constant_htons (int ) ;
 int htons (int ) ;

__attribute__((used)) static unsigned int igb_get_headlen(unsigned char *data,
        unsigned int max_len)
{
 union {
  unsigned char *network;

  struct ethhdr *eth;
  struct vlan_hdr *vlan;

  struct iphdr *ipv4;
  struct ipv6hdr *ipv6;
 } hdr;
 __be16 protocol;
 u8 nexthdr = 0;
 u8 hlen;


 if (max_len < ETH_HLEN)
  return max_len;


 hdr.network = data;


 protocol = hdr.eth->h_proto;
 hdr.network += ETH_HLEN;


 if (protocol == __constant_htons(ETH_P_8021Q)) {
  if ((hdr.network - data) > (max_len - VLAN_HLEN))
   return max_len;

  protocol = hdr.vlan->h_vlan_encapsulated_proto;
  hdr.network += VLAN_HLEN;
 }


 if (protocol == __constant_htons(ETH_P_IP)) {
  if ((hdr.network - data) > (max_len - sizeof(struct iphdr)))
   return max_len;


  hlen = (hdr.network[0] & 0x0F) << 2;


  if (hlen < sizeof(struct iphdr))
   return hdr.network - data;


  if (!(hdr.ipv4->frag_off & htons(IP_OFFSET)))
   nexthdr = hdr.ipv4->protocol;
 } else if (protocol == __constant_htons(ETH_P_IPV6)) {
  if ((hdr.network - data) > (max_len - sizeof(struct ipv6hdr)))
   return max_len;


  nexthdr = hdr.ipv6->nexthdr;
  hlen = sizeof(struct ipv6hdr);
 } else {
  return hdr.network - data;
 }


 hdr.network += hlen;


 if (nexthdr == IPPROTO_TCP) {
  if ((hdr.network - data) > (max_len - sizeof(struct tcphdr)))
   return max_len;


  hlen = (hdr.network[12] & 0xF0) >> 2;


  if (hlen < sizeof(struct tcphdr))
   return hdr.network - data;

  hdr.network += hlen;
 } else if (nexthdr == IPPROTO_UDP) {
  if ((hdr.network - data) > (max_len - sizeof(struct udphdr)))
   return max_len;

  hdr.network += sizeof(struct udphdr);
 }






 if ((hdr.network - data) < max_len)
  return hdr.network - data;
 else
  return max_len;
}
