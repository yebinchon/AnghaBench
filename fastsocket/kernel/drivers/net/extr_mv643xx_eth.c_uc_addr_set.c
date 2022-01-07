
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv643xx_eth_private {int dummy; } ;


 int MAC_ADDR_HIGH ;
 int MAC_ADDR_LOW ;
 int wrlp (struct mv643xx_eth_private*,int ,unsigned char) ;

__attribute__((used)) static void uc_addr_set(struct mv643xx_eth_private *mp, unsigned char *addr)
{
 wrlp(mp, MAC_ADDR_HIGH,
  (addr[0] << 24) | (addr[1] << 16) | (addr[2] << 8) | addr[3]);
 wrlp(mp, MAC_ADDR_LOW, (addr[4] << 8) | addr[5]);
}
