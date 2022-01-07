
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv643xx_eth_private {int port_num; } ;


 int PHY_ADDR ;
 unsigned int rdl (struct mv643xx_eth_private*,int ) ;

__attribute__((used)) static int phy_addr_get(struct mv643xx_eth_private *mp)
{
 unsigned int data;

 data = rdl(mp, PHY_ADDR);

 return (data >> (5 * mp->port_num)) & 0x1f;
}
