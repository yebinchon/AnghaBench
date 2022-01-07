
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AR_PHY_CHAN_SPUR_MASK ;
 int AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_A ;
 int AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_IDX_A ;
 int AR_PHY_MODE ;
 int AR_PHY_MODE_DYNAMIC ;
 int AR_PHY_PILOT_SPUR_MASK ;
 int AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_A ;
 int AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_IDX_A ;
 int AR_PHY_SFCORR_EXT ;
 int AR_PHY_SFCORR_EXT_SPUR_SUBCHANNEL_SD ;
 int AR_PHY_SPUR_MASK_A ;
 int AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_A ;
 int AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_IDX_A ;
 int AR_PHY_SPUR_REG ;
 int AR_PHY_SPUR_REG_ENABLE_MASK_PPM ;
 int AR_PHY_SPUR_REG_ENABLE_NF_RSSI_SPUR_MIT ;
 int AR_PHY_SPUR_REG_EN_VIT_SPUR_RSSI ;
 int AR_PHY_SPUR_REG_MASK_RATE_CNTL ;
 int AR_PHY_SPUR_REG_SPUR_RSSI_THRESH ;
 int AR_PHY_TIMING11 ;
 int AR_PHY_TIMING11_SPUR_DELTA_PHASE ;
 int AR_PHY_TIMING11_SPUR_FREQ_SD ;
 int AR_PHY_TIMING11_USE_SPUR_FILTER_IN_AGC ;
 int AR_PHY_TIMING11_USE_SPUR_FILTER_IN_SELFCOR ;
 int AR_PHY_TIMING4 ;
 int AR_PHY_TIMING4_ENABLE_CHAN_MASK ;
 int AR_PHY_TIMING4_ENABLE_PILOT_MASK ;
 int AR_PHY_TIMING4_ENABLE_SPUR_FILTER ;
 int AR_PHY_TIMING4_ENABLE_SPUR_RSSI ;
 int AR_SREV_9340 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9565 (struct ath_hw*) ;
 int REG_READ_FIELD (struct ath_hw*,int ,int ) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;

__attribute__((used)) static void ar9003_hw_spur_ofdm(struct ath_hw *ah,
    int freq_offset,
    int spur_freq_sd,
    int spur_delta_phase,
    int spur_subchannel_sd,
    int range,
    int synth_freq)
{
 int mask_index = 0;


 REG_RMW_FIELD(ah, AR_PHY_TIMING4,
   AR_PHY_TIMING4_ENABLE_SPUR_FILTER, 0x1);
 REG_RMW_FIELD(ah, AR_PHY_TIMING11,
        AR_PHY_TIMING11_SPUR_FREQ_SD, spur_freq_sd);
 REG_RMW_FIELD(ah, AR_PHY_TIMING11,
        AR_PHY_TIMING11_SPUR_DELTA_PHASE, spur_delta_phase);
 REG_RMW_FIELD(ah, AR_PHY_SFCORR_EXT,
        AR_PHY_SFCORR_EXT_SPUR_SUBCHANNEL_SD, spur_subchannel_sd);
 REG_RMW_FIELD(ah, AR_PHY_TIMING11,
        AR_PHY_TIMING11_USE_SPUR_FILTER_IN_AGC, 0x1);

 if (!(AR_SREV_9565(ah) && range == 10 && synth_freq == 2437))
  REG_RMW_FIELD(ah, AR_PHY_TIMING11,
         AR_PHY_TIMING11_USE_SPUR_FILTER_IN_SELFCOR, 0x1);

 REG_RMW_FIELD(ah, AR_PHY_TIMING4,
        AR_PHY_TIMING4_ENABLE_SPUR_RSSI, 0x1);
 REG_RMW_FIELD(ah, AR_PHY_SPUR_REG,
        AR_PHY_SPUR_REG_SPUR_RSSI_THRESH, 34);
 REG_RMW_FIELD(ah, AR_PHY_SPUR_REG,
        AR_PHY_SPUR_REG_EN_VIT_SPUR_RSSI, 1);

 if (!AR_SREV_9340(ah) &&
     REG_READ_FIELD(ah, AR_PHY_MODE,
      AR_PHY_MODE_DYNAMIC) == 0x1)
  REG_RMW_FIELD(ah, AR_PHY_SPUR_REG,
         AR_PHY_SPUR_REG_ENABLE_NF_RSSI_SPUR_MIT, 1);

 mask_index = (freq_offset << 4) / 5;
 if (mask_index < 0)
  mask_index = mask_index - 1;

 mask_index = mask_index & 0x7f;

 REG_RMW_FIELD(ah, AR_PHY_SPUR_REG,
        AR_PHY_SPUR_REG_ENABLE_MASK_PPM, 0x1);
 REG_RMW_FIELD(ah, AR_PHY_TIMING4,
        AR_PHY_TIMING4_ENABLE_PILOT_MASK, 0x1);
 REG_RMW_FIELD(ah, AR_PHY_TIMING4,
        AR_PHY_TIMING4_ENABLE_CHAN_MASK, 0x1);
 REG_RMW_FIELD(ah, AR_PHY_PILOT_SPUR_MASK,
        AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_IDX_A, mask_index);
 REG_RMW_FIELD(ah, AR_PHY_SPUR_MASK_A,
        AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_IDX_A, mask_index);
 REG_RMW_FIELD(ah, AR_PHY_CHAN_SPUR_MASK,
        AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_IDX_A, mask_index);
 REG_RMW_FIELD(ah, AR_PHY_PILOT_SPUR_MASK,
        AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_A, 0xc);
 REG_RMW_FIELD(ah, AR_PHY_CHAN_SPUR_MASK,
        AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_A, 0xc);
 REG_RMW_FIELD(ah, AR_PHY_SPUR_MASK_A,
        AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_A, 0xa0);
 REG_RMW_FIELD(ah, AR_PHY_SPUR_REG,
        AR_PHY_SPUR_REG_MASK_RATE_CNTL, 0xff);
}
