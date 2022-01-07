
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct b43_phy {int rev; struct b43_phy_g* g; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_g {int aci_enable; int * interfstack; } ;


 int B43_HF_ACIW ;


 int B43_PHY_G_CRS ;
 int B43_PHY_RADIO_BITFIELD ;
 int B43_WARN_ON (int) ;
 int b43_calc_nrssi_slope (struct b43_wldev*) ;
 int b43_calc_nrssi_threshold (struct b43_wldev*) ;
 int b43_hf_read (struct b43_wldev*) ;
 int b43_hf_write (struct b43_wldev*,int) ;
 int b43_ofdmtab_write16 (struct b43_wldev*,int,int,int) ;
 int b43_phy_mask (struct b43_wldev*,int,int) ;
 int b43_phy_maskset (struct b43_wldev*,int,int,int) ;
 int b43_phy_read (struct b43_wldev*,int) ;
 int b43_phy_set (struct b43_wldev*,int,int) ;
 int b43_phy_write (struct b43_wldev*,int,int) ;
 int b43_radio_read16 (struct b43_wldev*,int) ;
 int b43_radio_write16 (struct b43_wldev*,int,int) ;
 int bitrev4 (int) ;
 int ofdmtab_stacksave (int,int) ;
 int phy_stacksave (int) ;
 int radio_stacksave (int) ;

__attribute__((used)) static void
b43_radio_interference_mitigation_enable(struct b43_wldev *dev, int mode)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_g *gphy = phy->g;
 u16 tmp, flipped;
 size_t stackidx = 0;
 u32 *stack = gphy->interfstack;

 switch (mode) {
 case 128:
  if (phy->rev != 1) {
   b43_phy_set(dev, 0x042B, 0x0800);
   b43_phy_mask(dev, B43_PHY_G_CRS, ~0x4000);
   break;
  }
  radio_stacksave(0x0078);
  tmp = (b43_radio_read16(dev, 0x0078) & 0x001E);
  B43_WARN_ON(tmp > 15);
  flipped = bitrev4(tmp);
  if (flipped < 10 && flipped >= 8)
   flipped = 7;
  else if (flipped >= 10)
   flipped -= 3;
  flipped = (bitrev4(flipped) << 1) | 0x0020;
  b43_radio_write16(dev, 0x0078, flipped);

  b43_calc_nrssi_threshold(dev);

  phy_stacksave(0x0406);
  b43_phy_write(dev, 0x0406, 0x7E28);

  b43_phy_set(dev, 0x042B, 0x0800);
  b43_phy_set(dev, B43_PHY_RADIO_BITFIELD, 0x1000);

  phy_stacksave(0x04A0);
  b43_phy_maskset(dev, 0x04A0, 0xC0C0, 0x0008);
  phy_stacksave(0x04A1);
  b43_phy_maskset(dev, 0x04A1, 0xC0C0, 0x0605);
  phy_stacksave(0x04A2);
  b43_phy_maskset(dev, 0x04A2, 0xC0C0, 0x0204);
  phy_stacksave(0x04A8);
  b43_phy_maskset(dev, 0x04A8, 0xC0C0, 0x0803);
  phy_stacksave(0x04AB);
  b43_phy_maskset(dev, 0x04AB, 0xC0C0, 0x0605);

  phy_stacksave(0x04A7);
  b43_phy_write(dev, 0x04A7, 0x0002);
  phy_stacksave(0x04A3);
  b43_phy_write(dev, 0x04A3, 0x287A);
  phy_stacksave(0x04A9);
  b43_phy_write(dev, 0x04A9, 0x2027);
  phy_stacksave(0x0493);
  b43_phy_write(dev, 0x0493, 0x32F5);
  phy_stacksave(0x04AA);
  b43_phy_write(dev, 0x04AA, 0x2027);
  phy_stacksave(0x04AC);
  b43_phy_write(dev, 0x04AC, 0x32F5);
  break;
 case 129:
  if (b43_phy_read(dev, 0x0033) & 0x0800)
   break;

  gphy->aci_enable = 1;

  phy_stacksave(B43_PHY_RADIO_BITFIELD);
  phy_stacksave(B43_PHY_G_CRS);
  if (phy->rev < 2) {
   phy_stacksave(0x0406);
  } else {
   phy_stacksave(0x04C0);
   phy_stacksave(0x04C1);
  }
  phy_stacksave(0x0033);
  phy_stacksave(0x04A7);
  phy_stacksave(0x04A3);
  phy_stacksave(0x04A9);
  phy_stacksave(0x04AA);
  phy_stacksave(0x04AC);
  phy_stacksave(0x0493);
  phy_stacksave(0x04A1);
  phy_stacksave(0x04A0);
  phy_stacksave(0x04A2);
  phy_stacksave(0x048A);
  phy_stacksave(0x04A8);
  phy_stacksave(0x04AB);
  if (phy->rev == 2) {
   phy_stacksave(0x04AD);
   phy_stacksave(0x04AE);
  } else if (phy->rev >= 3) {
   phy_stacksave(0x04AD);
   phy_stacksave(0x0415);
   phy_stacksave(0x0416);
   phy_stacksave(0x0417);
   ofdmtab_stacksave(0x1A00, 0x2);
   ofdmtab_stacksave(0x1A00, 0x3);
  }
  phy_stacksave(0x042B);
  phy_stacksave(0x048C);

  b43_phy_mask(dev, B43_PHY_RADIO_BITFIELD, ~0x1000);
  b43_phy_maskset(dev, B43_PHY_G_CRS, 0xFFFC, 0x0002);

  b43_phy_write(dev, 0x0033, 0x0800);
  b43_phy_write(dev, 0x04A3, 0x2027);
  b43_phy_write(dev, 0x04A9, 0x1CA8);
  b43_phy_write(dev, 0x0493, 0x287A);
  b43_phy_write(dev, 0x04AA, 0x1CA8);
  b43_phy_write(dev, 0x04AC, 0x287A);

  b43_phy_maskset(dev, 0x04A0, 0xFFC0, 0x001A);
  b43_phy_write(dev, 0x04A7, 0x000D);

  if (phy->rev < 2) {
   b43_phy_write(dev, 0x0406, 0xFF0D);
  } else if (phy->rev == 2) {
   b43_phy_write(dev, 0x04C0, 0xFFFF);
   b43_phy_write(dev, 0x04C1, 0x00A9);
  } else {
   b43_phy_write(dev, 0x04C0, 0x00C1);
   b43_phy_write(dev, 0x04C1, 0x0059);
  }

  b43_phy_maskset(dev, 0x04A1, 0xC0FF, 0x1800);
  b43_phy_maskset(dev, 0x04A1, 0xFFC0, 0x0015);
  b43_phy_maskset(dev, 0x04A8, 0xCFFF, 0x1000);
  b43_phy_maskset(dev, 0x04A8, 0xF0FF, 0x0A00);
  b43_phy_maskset(dev, 0x04AB, 0xCFFF, 0x1000);
  b43_phy_maskset(dev, 0x04AB, 0xF0FF, 0x0800);
  b43_phy_maskset(dev, 0x04AB, 0xFFCF, 0x0010);
  b43_phy_maskset(dev, 0x04AB, 0xFFF0, 0x0005);
  b43_phy_maskset(dev, 0x04A8, 0xFFCF, 0x0010);
  b43_phy_maskset(dev, 0x04A8, 0xFFF0, 0x0006);
  b43_phy_maskset(dev, 0x04A2, 0xF0FF, 0x0800);
  b43_phy_maskset(dev, 0x04A0, 0xF0FF, 0x0500);
  b43_phy_maskset(dev, 0x04A2, 0xFFF0, 0x000B);

  if (phy->rev >= 3) {
   b43_phy_mask(dev, 0x048A, 0x7FFF);
   b43_phy_maskset(dev, 0x0415, 0x8000, 0x36D8);
   b43_phy_maskset(dev, 0x0416, 0x8000, 0x36D8);
   b43_phy_maskset(dev, 0x0417, 0xFE00, 0x016D);
  } else {
   b43_phy_set(dev, 0x048A, 0x1000);
   b43_phy_maskset(dev, 0x048A, 0x9FFF, 0x2000);
   b43_hf_write(dev, b43_hf_read(dev) | B43_HF_ACIW);
  }
  if (phy->rev >= 2) {
   b43_phy_set(dev, 0x042B, 0x0800);
  }
  b43_phy_maskset(dev, 0x048C, 0xF0FF, 0x0200);
  if (phy->rev == 2) {
   b43_phy_maskset(dev, 0x04AE, 0xFF00, 0x007F);
   b43_phy_maskset(dev, 0x04AD, 0x00FF, 0x1300);
  } else if (phy->rev >= 6) {
   b43_ofdmtab_write16(dev, 0x1A00, 0x3, 0x007F);
   b43_ofdmtab_write16(dev, 0x1A00, 0x2, 0x007F);
   b43_phy_mask(dev, 0x04AD, 0x00FF);
  }
  b43_calc_nrssi_slope(dev);
  break;
 default:
  B43_WARN_ON(1);
 }
}
