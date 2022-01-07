
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int wl; } ;
typedef enum b43_nphy_rf_sequence { ____Placeholder_b43_nphy_rf_sequence } b43_nphy_rf_sequence ;


 int ARRAY_SIZE (int const*) ;
 int B43_NPHY_RFSEQMODE ;
 int const B43_NPHY_RFSEQMODE_CAOVER ;
 int const B43_NPHY_RFSEQMODE_TROVER ;
 int B43_NPHY_RFSEQST ;
 int B43_NPHY_RFSEQTR ;
 int B43_WARN_ON (int) ;
 int const b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_set (struct b43_wldev*,int ,int const) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;
 int b43err (int ,char*) ;
 int msleep (int) ;

__attribute__((used)) static void b43_nphy_force_rf_sequence(struct b43_wldev *dev,
           enum b43_nphy_rf_sequence seq)
{
 static const u16 trigger[] = {
  [132] = 138,
  [131] = 137,
  [133] = 139,
  [130] = 136,
  [129] = 135,
  [128] = 134,
 };
 int i;
 u16 seq_mode = b43_phy_read(dev, B43_NPHY_RFSEQMODE);

 B43_WARN_ON(seq >= ARRAY_SIZE(trigger));

 b43_phy_set(dev, B43_NPHY_RFSEQMODE,
      B43_NPHY_RFSEQMODE_CAOVER | B43_NPHY_RFSEQMODE_TROVER);
 b43_phy_set(dev, B43_NPHY_RFSEQTR, trigger[seq]);
 for (i = 0; i < 200; i++) {
  if (!(b43_phy_read(dev, B43_NPHY_RFSEQST) & trigger[seq]))
   goto ok;
  msleep(1);
 }
 b43err(dev->wl, "RF sequence status timeout\n");
ok:
 b43_phy_write(dev, B43_NPHY_RFSEQMODE, seq_mode);
}
