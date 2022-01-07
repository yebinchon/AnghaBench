
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath_spec_scan {int count; int period; int fft_period; scalar_t__ endless; scalar_t__ short_repeat; int enabled; } ;
struct ath_hw {int dummy; } ;


 int AR_PHY_RADAR_0 ;
 int AR_PHY_RADAR_0_FFT_ENA ;
 int AR_PHY_SPECTRAL_SCAN ;
 int AR_PHY_SPECTRAL_SCAN_COUNT ;
 int AR_PHY_SPECTRAL_SCAN_ENABLE ;
 int AR_PHY_SPECTRAL_SCAN_FFT_PERIOD ;
 int AR_PHY_SPECTRAL_SCAN_PERIOD ;
 int AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT ;
 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;

__attribute__((used)) static void ar9002_hw_spectral_scan_config(struct ath_hw *ah,
        struct ath_spec_scan *param)
{
 u8 count;

 if (!param->enabled) {
  REG_CLR_BIT(ah, AR_PHY_SPECTRAL_SCAN,
       AR_PHY_SPECTRAL_SCAN_ENABLE);
  return;
 }
 REG_SET_BIT(ah, AR_PHY_RADAR_0, AR_PHY_RADAR_0_FFT_ENA);
 REG_SET_BIT(ah, AR_PHY_SPECTRAL_SCAN, AR_PHY_SPECTRAL_SCAN_ENABLE);

 if (param->short_repeat)
  REG_SET_BIT(ah, AR_PHY_SPECTRAL_SCAN,
       AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT);
 else
  REG_CLR_BIT(ah, AR_PHY_SPECTRAL_SCAN,
       AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT);





 count = param->count;
 if (param->endless)
  count = 0x80;
 else if (count & 0x80)
  count = 0x7f;

 REG_RMW_FIELD(ah, AR_PHY_SPECTRAL_SCAN,
        AR_PHY_SPECTRAL_SCAN_COUNT, count);
 REG_RMW_FIELD(ah, AR_PHY_SPECTRAL_SCAN,
        AR_PHY_SPECTRAL_SCAN_PERIOD, param->period);
 REG_RMW_FIELD(ah, AR_PHY_SPECTRAL_SCAN,
        AR_PHY_SPECTRAL_SCAN_FFT_PERIOD, param->fft_period);

 return;
}
