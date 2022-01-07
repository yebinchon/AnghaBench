
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct b43_wldev {int dummy; } ;


 scalar_t__ b43_nphy_gen_load_samples (struct b43_wldev*,int ,scalar_t__,int) ;
 int b43_nphy_run_samples (struct b43_wldev*,scalar_t__,int,int ,int,int) ;

__attribute__((used)) static int b43_nphy_tx_tone(struct b43_wldev *dev, u32 freq, u16 max_val,
    bool iqmode, bool dac_test)
{
 u16 samp = b43_nphy_gen_load_samples(dev, freq, max_val, dac_test);
 if (samp == 0)
  return -1;
 b43_nphy_run_samples(dev, samp, 0xFFFF, 0, iqmode, dac_test);
 return 0;
}
