
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv643xx_eth_private {int port_num; } ;


 int PHY_ADDR ;
 int rdl (struct mv643xx_eth_private*,int ) ;
 int wrl (struct mv643xx_eth_private*,int ,int) ;

__attribute__((used)) static void phy_addr_set(struct mv643xx_eth_private *mp, int phy_addr)
{
 int addr_shift = 5 * mp->port_num;
 u32 data;

 data = rdl(mp, PHY_ADDR);
 data &= ~(0x1f << addr_shift);
 data |= (phy_addr & 0x1f) << addr_shift;
 wrl(mp, PHY_ADDR, data);
}
