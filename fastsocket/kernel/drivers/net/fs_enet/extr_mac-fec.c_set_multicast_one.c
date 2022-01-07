
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int hthi; int htlo; } ;
struct fs_enet_private {TYPE_1__ fec; } ;


 int FEC_CRC_POLY ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void set_multicast_one(struct net_device *dev, const u8 *mac)
{
 struct fs_enet_private *fep = netdev_priv(dev);
 int temp, hash_index, i, j;
 u32 crc, csrVal;
 u8 byte, msb;

 crc = 0xffffffff;
 for (i = 0; i < 6; i++) {
  byte = mac[i];
  for (j = 0; j < 8; j++) {
   msb = crc >> 31;
   crc <<= 1;
   if (msb ^ (byte & 0x1))
    crc ^= FEC_CRC_POLY;
   byte >>= 1;
  }
 }

 temp = (crc & 0x3f) >> 1;
 hash_index = ((temp & 0x01) << 4) |
       ((temp & 0x02) << 2) |
       ((temp & 0x04)) |
       ((temp & 0x08) >> 2) |
       ((temp & 0x10) >> 4);
 csrVal = 1 << hash_index;
 if (crc & 1)
  fep->fec.hthi |= csrVal;
 else
  fep->fec.htlo |= csrVal;
}
