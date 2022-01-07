
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int rev; } ;
struct b43_wldev {int wl; TYPE_1__ phy; } ;
typedef enum n_intc_override { ____Placeholder_n_intc_override } n_intc_override ;


 int B43_NPHY_RFCTL_CMD ;
 int B43_NPHY_RFCTL_CMD_RXTX ;
 int B43_NPHY_RFCTL_CMD_START ;
 int B43_NPHY_RFCTL_INTC1 ;
 int B43_NPHY_RFCTL_INTC2 ;
 int B43_NPHY_RFCTL_OVER ;
 int B43_NPHY_TXF_40CO_B1S1 ;
 int B43_RFSEQ_RESET2RX ;
 int B43_WARN_ON (int) ;
 int IEEE80211_BAND_5GHZ ;





 int b43_current_band (int ) ;
 int b43_nphy_force_rf_sequence (struct b43_wldev*,int ) ;
 int b43_phy_mask (struct b43_wldev*,int,int) ;
 int b43_phy_maskset (struct b43_wldev*,int,int,int) ;
 int b43_phy_read (struct b43_wldev*,int) ;
 int b43_phy_set (struct b43_wldev*,int,int) ;
 int b43_phy_write (struct b43_wldev*,int,int ) ;
 int b43err (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static void b43_nphy_rf_ctl_intc_override(struct b43_wldev *dev,
       enum n_intc_override intc_override,
       u16 value, u8 core)
{
 u8 i, j;
 u16 reg, tmp, val;

 B43_WARN_ON(dev->phy.rev < 3);

 for (i = 0; i < 2; i++) {
  if ((core == 1 && i == 1) || (core == 2 && !i))
   continue;

  reg = (i == 0) ?
   B43_NPHY_RFCTL_INTC1 : B43_NPHY_RFCTL_INTC2;
  b43_phy_set(dev, reg, 0x400);

  switch (intc_override) {
  case 130:
   b43_phy_write(dev, reg, 0);
   b43_nphy_force_rf_sequence(dev, B43_RFSEQ_RESET2RX);
   break;
  case 128:
   if (!i) {
    b43_phy_maskset(dev, B43_NPHY_RFCTL_INTC1,
      0xFC3F, (value << 6));
    b43_phy_maskset(dev, B43_NPHY_TXF_40CO_B1S1,
      0xFFFE, 1);
    b43_phy_set(dev, B43_NPHY_RFCTL_CMD,
      B43_NPHY_RFCTL_CMD_START);
    for (j = 0; j < 100; j++) {
     if (!(b43_phy_read(dev, B43_NPHY_RFCTL_CMD) & B43_NPHY_RFCTL_CMD_START)) {
      j = 0;
      break;
     }
     udelay(10);
    }
    if (j)
     b43err(dev->wl,
      "intc override timeout\n");
    b43_phy_mask(dev, B43_NPHY_TXF_40CO_B1S1,
      0xFFFE);
   } else {
    b43_phy_maskset(dev, B43_NPHY_RFCTL_INTC2,
      0xFC3F, (value << 6));
    b43_phy_maskset(dev, B43_NPHY_RFCTL_OVER,
      0xFFFE, 1);
    b43_phy_set(dev, B43_NPHY_RFCTL_CMD,
      B43_NPHY_RFCTL_CMD_RXTX);
    for (j = 0; j < 100; j++) {
     if (!(b43_phy_read(dev, B43_NPHY_RFCTL_CMD) & B43_NPHY_RFCTL_CMD_RXTX)) {
      j = 0;
      break;
     }
     udelay(10);
    }
    if (j)
     b43err(dev->wl,
      "intc override timeout\n");
    b43_phy_mask(dev, B43_NPHY_RFCTL_OVER,
      0xFFFE);
   }
   break;
  case 129:
   if (b43_current_band(dev->wl) == IEEE80211_BAND_5GHZ) {
    tmp = 0x0020;
    val = value << 5;
   } else {
    tmp = 0x0010;
    val = value << 4;
   }
   b43_phy_maskset(dev, reg, ~tmp, val);
   break;
  case 131:
   if (b43_current_band(dev->wl) == IEEE80211_BAND_5GHZ) {
    tmp = 0x0001;
    val = value;
   } else {
    tmp = 0x0004;
    val = value << 2;
   }
   b43_phy_maskset(dev, reg, ~tmp, val);
   break;
  case 132:
   if (b43_current_band(dev->wl) == IEEE80211_BAND_5GHZ) {
    tmp = 0x0002;
    val = value << 1;
   } else {
    tmp = 0x0008;
    val = value << 3;
   }
   b43_phy_maskset(dev, reg, ~tmp, val);
   break;
  }
 }
}
