
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int ETH_ALEN ;

u64 mlx4_en_mac_to_u64(u8 *addr)
{
 u64 mac = 0;
 int i;

 for (i = 0; i < ETH_ALEN; i++) {
  mac <<= 8;
  mac |= addr[i];
 }
 return mac;
}
