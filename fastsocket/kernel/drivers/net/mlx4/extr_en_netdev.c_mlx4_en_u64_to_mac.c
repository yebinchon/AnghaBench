
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ETH_ALEN ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static void mlx4_en_u64_to_mac(unsigned char dst_mac[ETH_ALEN + 2], u64 src_mac)
{
 int i;
 for (i = ETH_ALEN - 1; i >= 0; --i) {
  dst_mac[i] = src_mac & 0xff;
  src_mac >>= 8;
 }
 memset(&dst_mac[ETH_ALEN], 0, 2);
}
