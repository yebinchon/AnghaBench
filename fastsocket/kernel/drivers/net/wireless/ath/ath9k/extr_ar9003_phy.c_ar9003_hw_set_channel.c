
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct chan_centers {int synth_center; } ;
struct ath_hw {struct ath9k_channel* curchan; scalar_t__ is_clk_25mhz; } ;
struct ath9k_channel {int dummy; } ;


 int AR_PHY_65NM_CH0_SYNTH4 ;
 int AR_PHY_65NM_CH0_SYNTH7 ;
 int AR_PHY_SYNTH4_LONG_SHIFT_SELECT ;
 int AR_PHY_SYNTH_CONTROL ;
 scalar_t__ AR_SREV_9330 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9340 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9485 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9550 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9565 (struct ath_hw*) ;
 int CHANSEL_2G (int) ;
 int CHANSEL_5G (int) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int ath9k_hw_get_channel_centers (struct ath_hw*,struct ath9k_channel*,struct chan_centers*) ;

__attribute__((used)) static int ar9003_hw_set_channel(struct ath_hw *ah, struct ath9k_channel *chan)
{
 u16 bMode, fracMode = 0, aModeRefSel = 0;
 u32 freq, chan_frac, div, channelSel = 0, reg32 = 0;
 struct chan_centers centers;
 int loadSynthChannel;

 ath9k_hw_get_channel_centers(ah, chan, &centers);
 freq = centers.synth_center;

 if (freq < 4800) {
  if (AR_SREV_9330(ah)) {
   if (ah->is_clk_25mhz)
    div = 75;
   else
    div = 120;

   channelSel = (freq * 4) / div;
   chan_frac = (((freq * 4) % div) * 0x20000) / div;
   channelSel = (channelSel << 17) | chan_frac;
  } else if (AR_SREV_9485(ah) || AR_SREV_9565(ah)) {






   channelSel = (freq * 4) / 120;
   chan_frac = (((freq * 4) % 120) * 0x20000) / 120;
   channelSel = (channelSel << 17) | chan_frac;
  } else if (AR_SREV_9340(ah)) {
   if (ah->is_clk_25mhz) {
    channelSel = (freq * 2) / 75;
    chan_frac = (((freq * 2) % 75) * 0x20000) / 75;
    channelSel = (channelSel << 17) | chan_frac;
   } else {
    channelSel = CHANSEL_2G(freq) >> 1;
   }
  } else if (AR_SREV_9550(ah)) {
   if (ah->is_clk_25mhz)
    div = 75;
   else
    div = 120;

   channelSel = (freq * 4) / div;
   chan_frac = (((freq * 4) % div) * 0x20000) / div;
   channelSel = (channelSel << 17) | chan_frac;
  } else {
   channelSel = CHANSEL_2G(freq);
  }

  bMode = 1;
 } else {
  if ((AR_SREV_9340(ah) || AR_SREV_9550(ah)) &&
      ah->is_clk_25mhz) {
   channelSel = freq / 75;
   chan_frac = ((freq % 75) * 0x20000) / 75;
   channelSel = (channelSel << 17) | chan_frac;
  } else {
   channelSel = CHANSEL_5G(freq);

   channelSel >>= 1;
  }

  bMode = 0;
 }


 fracMode = 1;
 aModeRefSel = 0;
 loadSynthChannel = 0;

 reg32 = (bMode << 29);
 REG_WRITE(ah, AR_PHY_SYNTH_CONTROL, reg32);


 REG_RMW_FIELD(ah, AR_PHY_65NM_CH0_SYNTH4,
        AR_PHY_SYNTH4_LONG_SHIFT_SELECT, 1);


 reg32 = (channelSel << 2) | (fracMode << 30) |
  (aModeRefSel << 28) | (loadSynthChannel << 31);
 REG_WRITE(ah, AR_PHY_65NM_CH0_SYNTH7, reg32);


 loadSynthChannel = 1;
 reg32 = (channelSel << 2) | (fracMode << 30) |
  (aModeRefSel << 28) | (loadSynthChannel << 31);
 REG_WRITE(ah, AR_PHY_65NM_CH0_SYNTH7, reg32);

 ah->curchan = chan;

 return 0;
}
