
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct net_device {scalar_t__ dev_addr; } ;


 int memcpy (int*,scalar_t__,int) ;

__attribute__((used)) static void mlx4_addrconf_ifid_eui48(u8 *eui, u16 vlan_id, struct net_device *dev)
{
 memcpy(eui, dev->dev_addr, 3);
 memcpy(eui + 5, dev->dev_addr + 3, 3);
 if (vlan_id < 0x1000) {
  eui[3] = vlan_id >> 8;
  eui[4] = vlan_id & 0xff;
 } else {
  eui[3] = 0xff;
  eui[4] = 0xfe;
 }
 eui[0] ^= 2;
}
