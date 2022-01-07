
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_phy {int rev; } ;
struct b43_wldev {struct b43_phy phy; } ;


 int B43_ANTENNA_AUTO0 ;
 int B43_ANTENNA_AUTO1 ;
 int B43_HF_ANTDIVHELP ;
 int B43_PHY_ADIVRELATED ;
 int B43_PHY_ANTDWELL ;
 int B43_PHY_ANTDWELL_AUTODIV1 ;
 int B43_PHY_ANTWRSETT ;
 int B43_PHY_ANTWRSETT_ARXDIV ;
 int B43_PHY_BBANDCFG ;
 int B43_PHY_BBANDCFG_RXANT ;
 int B43_PHY_BBANDCFG_RXANT_SHIFT ;
 int B43_PHY_DIVSRCHGAINBACK ;
 int B43_PHY_OFDM61 ;
 int B43_PHY_OFDM61_10 ;
 int B43_PHY_OFDM9B ;
 int b43_hf_read (struct b43_wldev*) ;
 int b43_hf_write (struct b43_wldev*,int) ;
 int b43_phy_mask (struct b43_wldev*,int ,int) ;
 int b43_phy_maskset (struct b43_wldev*,int ,int,int) ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_set (struct b43_wldev*,int ,int) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_gphy_op_set_rx_antenna(struct b43_wldev *dev, int antenna)
{
 struct b43_phy *phy = &dev->phy;
 u16 tmp;
 int autodiv = 0;

 if (antenna == B43_ANTENNA_AUTO0 || antenna == B43_ANTENNA_AUTO1)
  autodiv = 1;

 b43_hf_write(dev, b43_hf_read(dev) & ~B43_HF_ANTDIVHELP);

 b43_phy_maskset(dev, B43_PHY_BBANDCFG, ~B43_PHY_BBANDCFG_RXANT,
   (autodiv ? B43_ANTENNA_AUTO1 : antenna) <<
   B43_PHY_BBANDCFG_RXANT_SHIFT);

 if (autodiv) {
  tmp = b43_phy_read(dev, B43_PHY_ANTDWELL);
  if (antenna == B43_ANTENNA_AUTO1)
   tmp &= ~B43_PHY_ANTDWELL_AUTODIV1;
  else
   tmp |= B43_PHY_ANTDWELL_AUTODIV1;
  b43_phy_write(dev, B43_PHY_ANTDWELL, tmp);
 }

 tmp = b43_phy_read(dev, B43_PHY_ANTWRSETT);
 if (autodiv)
  tmp |= B43_PHY_ANTWRSETT_ARXDIV;
 else
  tmp &= ~B43_PHY_ANTWRSETT_ARXDIV;
 b43_phy_write(dev, B43_PHY_ANTWRSETT, tmp);

 if (autodiv)
  b43_phy_set(dev, B43_PHY_ANTWRSETT, B43_PHY_ANTWRSETT_ARXDIV);
 else {
  b43_phy_mask(dev, B43_PHY_ANTWRSETT,
        B43_PHY_ANTWRSETT_ARXDIV);
 }

 if (phy->rev >= 2) {
  b43_phy_set(dev, B43_PHY_OFDM61, B43_PHY_OFDM61_10);
  b43_phy_maskset(dev, B43_PHY_DIVSRCHGAINBACK, 0xFF00, 0x15);

  if (phy->rev == 2)
   b43_phy_write(dev, B43_PHY_ADIVRELATED, 8);
  else
   b43_phy_maskset(dev, B43_PHY_ADIVRELATED, 0xFF00, 8);
 }
 if (phy->rev >= 6)
  b43_phy_write(dev, B43_PHY_OFDM9B, 0xDC);

 b43_hf_write(dev, b43_hf_read(dev) | B43_HF_ANTDIVHELP);
}
