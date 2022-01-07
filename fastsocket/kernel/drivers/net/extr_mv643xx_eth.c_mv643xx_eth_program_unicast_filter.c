
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dev_addr; } ;
struct mv643xx_eth_private {int port_num; } ;


 int PORT_CONFIG ;
 int UNICAST_PROMISCUOUS_MODE ;
 int UNICAST_TABLE (int ) ;
 struct mv643xx_eth_private* netdev_priv (struct net_device*) ;
 int rdlp (struct mv643xx_eth_private*,int ) ;
 int uc_addr_filter_mask (struct net_device*) ;
 int uc_addr_set (struct mv643xx_eth_private*,int ) ;
 int wrl (struct mv643xx_eth_private*,int,int) ;
 int wrlp (struct mv643xx_eth_private*,int ,int) ;

__attribute__((used)) static void mv643xx_eth_program_unicast_filter(struct net_device *dev)
{
 struct mv643xx_eth_private *mp = netdev_priv(dev);
 u32 port_config;
 u32 nibbles;
 int i;

 uc_addr_set(mp, dev->dev_addr);

 port_config = rdlp(mp, PORT_CONFIG) & ~UNICAST_PROMISCUOUS_MODE;

 nibbles = uc_addr_filter_mask(dev);
 if (!nibbles) {
  port_config |= UNICAST_PROMISCUOUS_MODE;
  nibbles = 0xffff;
 }

 for (i = 0; i < 16; i += 4) {
  int off = UNICAST_TABLE(mp->port_num) + i;
  u32 v;

  v = 0;
  if (nibbles & 1)
   v |= 0x00000001;
  if (nibbles & 2)
   v |= 0x00000100;
  if (nibbles & 4)
   v |= 0x00010000;
  if (nibbles & 8)
   v |= 0x01000000;
  nibbles >>= 4;

  wrl(mp, off, v);
 }

 wrlp(mp, PORT_CONFIG, port_config);
}
