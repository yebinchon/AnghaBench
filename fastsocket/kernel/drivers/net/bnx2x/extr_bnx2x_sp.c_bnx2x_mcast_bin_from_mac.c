
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ETH_ALEN ;
 int crc32c_le (int ,int*,int ) ;

__attribute__((used)) static inline u8 bnx2x_mcast_bin_from_mac(u8 *mac)
{
 return (crc32c_le(0, mac, ETH_ALEN) >> 24) & 0xff;
}
