
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct b43_phy {int rev; scalar_t__ gmode; } ;
struct b43_wldev {TYPE_2__* dev; struct b43_phy phy; } ;
struct TYPE_4__ {TYPE_1__* bus_sprom; } ;
struct TYPE_3__ {int boardflags_lo; } ;


 int B43_BFL_EXTLNA ;
 int B43_PHY_LO_LEAKAGE ;
 int B43_PHY_PGACTL ;
 int B43_PHY_PGACTL_LOWBANDW ;
 int B43_PHY_PGACTL_LPF ;
 int B43_PHY_PGACTL_UNKNOWN ;
 int B43_PHY_RFOVERVAL ;
 int B43_PHY_RFOVERVAL_BW ;
 int B43_PHY_RFOVERVAL_BW_LBW ;
 int B43_PHY_RFOVERVAL_BW_LPF ;
 int B43_PHY_RFOVERVAL_EXTLNA ;
 int B43_PHY_RFOVERVAL_LNA ;
 int B43_PHY_RFOVERVAL_LNA_SHIFT ;
 int B43_PHY_RFOVERVAL_PGA ;
 int B43_PHY_RFOVERVAL_PGA_SHIFT ;
 int B43_PHY_RFOVERVAL_TRSWRX ;
 int B43_PHY_RFOVERVAL_UNK ;
 int B43_WARN_ON (int) ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;
 int cond_resched () ;
 int udelay (int) ;

__attribute__((used)) static u16 lo_measure_feedthrough(struct b43_wldev *dev,
      u16 lna, u16 pga, u16 trsw_rx)
{
 struct b43_phy *phy = &dev->phy;
 u16 rfover;
 u16 feedthrough;

 if (phy->gmode) {
  lna <<= B43_PHY_RFOVERVAL_LNA_SHIFT;
  pga <<= B43_PHY_RFOVERVAL_PGA_SHIFT;

  B43_WARN_ON(lna & ~B43_PHY_RFOVERVAL_LNA);
  B43_WARN_ON(pga & ~B43_PHY_RFOVERVAL_PGA);



  trsw_rx &= (B43_PHY_RFOVERVAL_TRSWRX | B43_PHY_RFOVERVAL_BW);


  rfover = B43_PHY_RFOVERVAL_UNK;
  rfover |= pga;
  rfover |= lna;
  rfover |= trsw_rx;
  if ((dev->dev->bus_sprom->boardflags_lo & B43_BFL_EXTLNA)
      && phy->rev > 6)
   rfover |= B43_PHY_RFOVERVAL_EXTLNA;

  b43_phy_write(dev, B43_PHY_PGACTL, 0xE300);
  b43_phy_write(dev, B43_PHY_RFOVERVAL, rfover);
  udelay(10);
  rfover |= B43_PHY_RFOVERVAL_BW_LBW;
  b43_phy_write(dev, B43_PHY_RFOVERVAL, rfover);
  udelay(10);
  rfover |= B43_PHY_RFOVERVAL_BW_LPF;
  b43_phy_write(dev, B43_PHY_RFOVERVAL, rfover);
  udelay(10);
  b43_phy_write(dev, B43_PHY_PGACTL, 0xF300);
 } else {
  pga |= B43_PHY_PGACTL_UNKNOWN;
  b43_phy_write(dev, B43_PHY_PGACTL, pga);
  udelay(10);
  pga |= B43_PHY_PGACTL_LOWBANDW;
  b43_phy_write(dev, B43_PHY_PGACTL, pga);
  udelay(10);
  pga |= B43_PHY_PGACTL_LPF;
  b43_phy_write(dev, B43_PHY_PGACTL, pga);
 }
 udelay(21);
 feedthrough = b43_phy_read(dev, B43_PHY_LO_LEAKAGE);




 cond_resched();

 return feedthrough;
}
