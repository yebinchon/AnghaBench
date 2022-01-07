
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct brcms_phy {int dummy; } ;


 int EBADE ;
 scalar_t__ wlc_phy_gen_load_samples_nphy (struct brcms_phy*,int ,scalar_t__,int ) ;
 int wlc_phy_runsamples_nphy (struct brcms_phy*,scalar_t__,scalar_t__,scalar_t__,int ,int ,int) ;

int
wlc_phy_tx_tone_nphy(struct brcms_phy *pi, u32 f_kHz, u16 max_val,
       u8 iqmode, u8 dac_test_mode, bool modify_bbmult)
{
 u16 num_samps;
 u16 loops = 0xffff;
 u16 wait = 0;

 num_samps = wlc_phy_gen_load_samples_nphy(pi, f_kHz, max_val,
        dac_test_mode);
 if (num_samps == 0)
  return -EBADE;

 wlc_phy_runsamples_nphy(pi, num_samps, loops, wait, iqmode,
    dac_test_mode, modify_bbmult);

 return 0;
}
