
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {struct b43_phy_lp* lp; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_lp {int tx_tone_freq; } ;
struct b43_c32 {int i; int q; } ;
typedef int s32 ;


 int B43_LPTAB16 (int,int ) ;
 scalar_t__ B43_WARN_ON (int) ;
 int CORDIC_CONVERT (int) ;
 int abs (int) ;
 struct b43_c32 b43_cordic (int) ;
 int b43_lptab_write_bulk (struct b43_wldev*,int ,int,int*) ;
 int lpphy_run_samples (struct b43_wldev*,int,int,int ) ;

__attribute__((used)) static void lpphy_start_tx_tone(struct b43_wldev *dev, s32 freq, u16 max)
{
 struct b43_phy_lp *lpphy = dev->phy.lp;
 u16 buf[64];
 int i, samples = 0, angle = 0;
 int rotation = (((36 * freq) / 20) << 16) / 100;
 struct b43_c32 sample;

 lpphy->tx_tone_freq = freq;

 if (freq) {

  for (i = 1; samples * abs(freq) != 20000 * i; i++) {
   samples = (20000 * i) / abs(freq);
   if(B43_WARN_ON(samples > 63))
    return;
  }
 } else {
  samples = 2;
 }

 for (i = 0; i < samples; i++) {
  sample = b43_cordic(angle);
  angle += rotation;
  buf[i] = CORDIC_CONVERT((sample.i * max) & 0xFF) << 8;
  buf[i] |= CORDIC_CONVERT((sample.q * max) & 0xFF);
 }

 b43_lptab_write_bulk(dev, B43_LPTAB16(5, 0), samples, buf);

 lpphy_run_samples(dev, samples, 0xFFFF, 0);
}
