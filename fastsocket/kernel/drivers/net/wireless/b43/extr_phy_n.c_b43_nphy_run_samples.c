
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int is_40mhz; struct b43_phy_n* n; } ;
struct b43_wldev {int wl; TYPE_1__ phy; } ;
struct b43_phy_n {int bb_mult_save; scalar_t__ hang_avoid; } ;


 int B43_NPHY_IQLOCAL_CMDGCTL ;
 int B43_NPHY_RFSEQMODE ;
 int B43_NPHY_RFSEQMODE_CAOVER ;
 int B43_NPHY_RFSEQST ;
 int B43_NPHY_SAMP_CMD ;
 int B43_NPHY_SAMP_DEPCNT ;
 int B43_NPHY_SAMP_LOOPCNT ;
 int B43_NPHY_SAMP_WAITCNT ;
 int B43_NTAB16 (int,int) ;
 int b43_nphy_stay_in_carrier_search (struct b43_wldev*,int) ;
 int b43_ntab_read (struct b43_wldev*,int ) ;
 int b43_ntab_write (struct b43_wldev*,int ,int) ;
 int b43_phy_mask (struct b43_wldev*,int ,int) ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_set (struct b43_wldev*,int ,int) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;
 int b43err (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static void b43_nphy_run_samples(struct b43_wldev *dev, u16 samps, u16 loops,
     u16 wait, bool iqmode, bool dac_test)
{
 struct b43_phy_n *nphy = dev->phy.n;
 int i;
 u16 seq_mode;
 u32 tmp;

 if (nphy->hang_avoid)
  b43_nphy_stay_in_carrier_search(dev, 1);

 if ((nphy->bb_mult_save & 0x80000000) == 0) {
  tmp = b43_ntab_read(dev, B43_NTAB16(15, 87));
  nphy->bb_mult_save = (tmp & 0xFFFF) | 0x80000000;
 }

 if (!dev->phy.is_40mhz)
  tmp = 0x6464;
 else
  tmp = 0x4747;
 b43_ntab_write(dev, B43_NTAB16(15, 87), tmp);

 if (nphy->hang_avoid)
  b43_nphy_stay_in_carrier_search(dev, 0);

 b43_phy_write(dev, B43_NPHY_SAMP_DEPCNT, (samps - 1));

 if (loops != 0xFFFF)
  b43_phy_write(dev, B43_NPHY_SAMP_LOOPCNT, (loops - 1));
 else
  b43_phy_write(dev, B43_NPHY_SAMP_LOOPCNT, loops);

 b43_phy_write(dev, B43_NPHY_SAMP_WAITCNT, wait);

 seq_mode = b43_phy_read(dev, B43_NPHY_RFSEQMODE);

 b43_phy_set(dev, B43_NPHY_RFSEQMODE, B43_NPHY_RFSEQMODE_CAOVER);
 if (iqmode) {
  b43_phy_mask(dev, B43_NPHY_IQLOCAL_CMDGCTL, 0x7FFF);
  b43_phy_set(dev, B43_NPHY_IQLOCAL_CMDGCTL, 0x8000);
 } else {
  if (dac_test)
   b43_phy_write(dev, B43_NPHY_SAMP_CMD, 5);
  else
   b43_phy_write(dev, B43_NPHY_SAMP_CMD, 1);
 }
 for (i = 0; i < 100; i++) {
  if (!(b43_phy_read(dev, B43_NPHY_RFSEQST) & 1)) {
   i = 0;
   break;
  }
  udelay(10);
 }
 if (i)
  b43err(dev->wl, "run samples timeout\n");

 b43_phy_write(dev, B43_NPHY_RFSEQMODE, seq_mode);
}
