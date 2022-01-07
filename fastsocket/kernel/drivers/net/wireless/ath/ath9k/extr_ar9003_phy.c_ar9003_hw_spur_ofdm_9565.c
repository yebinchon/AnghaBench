
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AR_PHY_CHAN_SPUR_MASK ;
 int AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_B ;
 int AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_IDX_B ;
 int AR_PHY_PILOT_SPUR_MASK ;
 int AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_B ;
 int AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_IDX_B ;
 int AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_A ;
 int AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_IDX_A ;
 int AR_PHY_SPUR_MASK_B ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;

__attribute__((used)) static void ar9003_hw_spur_ofdm_9565(struct ath_hw *ah,
         int freq_offset)
{
 int mask_index = 0;

 mask_index = (freq_offset << 4) / 5;
 if (mask_index < 0)
  mask_index = mask_index - 1;

 mask_index = mask_index & 0x7f;

 REG_RMW_FIELD(ah, AR_PHY_PILOT_SPUR_MASK,
        AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_IDX_B,
        mask_index);


 REG_RMW_FIELD(ah, AR_PHY_SPUR_MASK_B,
        AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_IDX_A,
        mask_index);

 REG_RMW_FIELD(ah, AR_PHY_CHAN_SPUR_MASK,
        AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_IDX_B,
        mask_index);
 REG_RMW_FIELD(ah, AR_PHY_PILOT_SPUR_MASK,
        AR_PHY_PILOT_SPUR_MASK_CF_PILOT_MASK_B, 0xe);
 REG_RMW_FIELD(ah, AR_PHY_CHAN_SPUR_MASK,
        AR_PHY_CHAN_SPUR_MASK_CF_CHAN_MASK_B, 0xe);


 REG_RMW_FIELD(ah, AR_PHY_SPUR_MASK_B,
        AR_PHY_SPUR_MASK_A_CF_PUNC_MASK_A, 0xa0);
}
