
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;


 int AR_RTC_9160_PLL_CLKSEL ;
 int AR_RTC_9160_PLL_DIV ;
 int AR_RTC_9160_PLL_REFDIV ;
 scalar_t__ AR_SREV_9280_20 (struct ath_hw*) ;
 scalar_t__ IS_CHAN_5GHZ (struct ath9k_channel*) ;
 int IS_CHAN_A_FAST_CLOCK (struct ath_hw*,struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_HALF_RATE (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_QUARTER_RATE (struct ath9k_channel*) ;
 int SM (int,int ) ;

__attribute__((used)) static u32 ar9002_hw_compute_pll_control(struct ath_hw *ah,
      struct ath9k_channel *chan)
{
 int ref_div = 5;
 int pll_div = 0x2c;
 u32 pll;

 if (chan && IS_CHAN_5GHZ(chan) && !IS_CHAN_A_FAST_CLOCK(ah, chan)) {
  if (AR_SREV_9280_20(ah)) {
   ref_div = 10;
   pll_div = 0x50;
  } else {
   pll_div = 0x28;
  }
 }

 pll = SM(ref_div, AR_RTC_9160_PLL_REFDIV);
 pll |= SM(pll_div, AR_RTC_9160_PLL_DIV);

 if (chan && IS_CHAN_HALF_RATE(chan))
  pll |= SM(0x1, AR_RTC_9160_PLL_CLKSEL);
 else if (chan && IS_CHAN_QUARTER_RATE(chan))
  pll |= SM(0x2, AR_RTC_9160_PLL_CLKSEL);

 return pll;
}
