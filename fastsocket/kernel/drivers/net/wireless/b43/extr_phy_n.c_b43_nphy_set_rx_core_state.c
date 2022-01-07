
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b43_phy {int rev; struct b43_phy_n* n; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_n {int phyrxchain; scalar_t__ hang_avoid; } ;


 int B43_NPHY_HPANT_SWTHRES ;
 int B43_NPHY_RFSEQCA ;
 int B43_NPHY_RFSEQCA_RXEN ;
 int B43_NPHY_RFSEQCA_RXEN_SHIFT ;
 int B43_RFSEQ_RESET2RX ;
 int b43_mac_enable (struct b43_wldev*) ;
 int b43_mac_suspend (struct b43_wldev*) ;
 int b43_nphy_force_rf_sequence (struct b43_wldev*,int ) ;
 int b43_nphy_stay_in_carrier_search (struct b43_wldev*,int) ;
 int b43_phy_maskset (struct b43_wldev*,int ,int ,int) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_nphy_set_rx_core_state(struct b43_wldev *dev, u8 mask)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_n *nphy = phy->n;


 nphy->phyrxchain = mask;

 if (0 )
  return;

 b43_mac_suspend(dev);

 if (nphy->hang_avoid)
  b43_nphy_stay_in_carrier_search(dev, 1);

 b43_phy_maskset(dev, B43_NPHY_RFSEQCA, ~B43_NPHY_RFSEQCA_RXEN,
   (mask & 0x3) << B43_NPHY_RFSEQCA_RXEN_SHIFT);

 if ((mask & 0x3) != 0x3) {
  b43_phy_write(dev, B43_NPHY_HPANT_SWTHRES, 1);
  if (dev->phy.rev >= 3) {

  }
 } else {
  b43_phy_write(dev, B43_NPHY_HPANT_SWTHRES, 0x1E);
  if (dev->phy.rev >= 3) {

  }
 }

 b43_nphy_force_rf_sequence(dev, B43_RFSEQ_RESET2RX);

 if (nphy->hang_avoid)
  b43_nphy_stay_in_carrier_search(dev, 0);

 b43_mac_enable(dev);
}
