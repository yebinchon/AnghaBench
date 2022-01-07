
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int arp_hash (int const*,int) ;
 unsigned int ipv6_hash (int const*,int) ;

__attribute__((used)) static unsigned int addr_hash(const u32 *addr, int addr_len, int ifindex)
{
 return addr_len == 4 ? arp_hash(addr, ifindex) :
          ipv6_hash(addr, ifindex);
}
