
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethhdr {scalar_t__ h_proto; } ;


 int ETH_HLEN ;
 int ETH_P_8021Q ;
 int VLAN_ETH_HLEN ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static inline int eth_hdr_len(const void *data)
{
 const struct ethhdr *e = data;

 return e->h_proto == htons(ETH_P_8021Q) ? VLAN_ETH_HLEN : ETH_HLEN;
}
