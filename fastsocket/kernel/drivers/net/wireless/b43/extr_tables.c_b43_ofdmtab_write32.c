
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {struct b43_phy_g* g; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_g {scalar_t__ ofdmtab_addr_direction; int ofdmtab_addr; } ;


 scalar_t__ B43_OFDMTAB_DIRECTION_WRITE ;
 int B43_PHY_OTABLECTL ;
 int B43_PHY_OTABLEI ;
 int B43_PHY_OTABLEQ ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

void b43_ofdmtab_write32(struct b43_wldev *dev, u16 table,
    u16 offset, u32 value)
{
 struct b43_phy_g *gphy = dev->phy.g;
 u16 addr;

 addr = table + offset;
 if ((gphy->ofdmtab_addr_direction != B43_OFDMTAB_DIRECTION_WRITE) ||
     (addr - 1 != gphy->ofdmtab_addr)) {

  b43_phy_write(dev, B43_PHY_OTABLECTL, addr);
  gphy->ofdmtab_addr_direction = B43_OFDMTAB_DIRECTION_WRITE;
 }
 gphy->ofdmtab_addr = addr;

 b43_phy_write(dev, B43_PHY_OTABLEI, value);
 b43_phy_write(dev, B43_PHY_OTABLEQ, (value >> 16));
}
