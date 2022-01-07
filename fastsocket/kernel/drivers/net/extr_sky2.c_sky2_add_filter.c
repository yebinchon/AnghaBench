
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ETH_ALEN ;
 int ether_crc (int ,int const*) ;

__attribute__((used)) static void inline sky2_add_filter(u8 filter[8], const u8 *addr)
{
 u32 bit;

 bit = ether_crc(ETH_ALEN, addr) & 63;
 filter[bit >> 3] |= 1 << (bit & 7);
}
