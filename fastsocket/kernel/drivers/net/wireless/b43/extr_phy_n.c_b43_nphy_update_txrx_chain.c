
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {struct b43_phy_n* n; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_n {int txrx_chain; } ;


 int B43_NPHY_RFSEQCA ;
 int B43_NPHY_RFSEQCA_RXEN ;
 int B43_NPHY_RFSEQCA_TXEN ;
 int B43_NPHY_RFSEQMODE ;
 int B43_NPHY_RFSEQMODE_CAOVER ;
 int b43_phy_mask (struct b43_wldev*,int ,int ) ;
 int b43_phy_maskset (struct b43_wldev*,int ,int,int) ;
 int b43_phy_set (struct b43_wldev*,int ,int ) ;

__attribute__((used)) static void b43_nphy_update_txrx_chain(struct b43_wldev *dev)
{
 struct b43_phy_n *nphy = dev->phy.n;

 bool override = 0;
 u16 chain = 0x33;

 if (nphy->txrx_chain == 0) {
  chain = 0x11;
  override = 1;
 } else if (nphy->txrx_chain == 1) {
  chain = 0x22;
  override = 1;
 }

 b43_phy_maskset(dev, B43_NPHY_RFSEQCA,
   ~(B43_NPHY_RFSEQCA_TXEN | B43_NPHY_RFSEQCA_RXEN),
   chain);

 if (override)
  b43_phy_set(dev, B43_NPHY_RFSEQMODE,
    B43_NPHY_RFSEQMODE_CAOVER);
 else
  b43_phy_mask(dev, B43_NPHY_RFSEQMODE,
    ~B43_NPHY_RFSEQMODE_CAOVER);
}
