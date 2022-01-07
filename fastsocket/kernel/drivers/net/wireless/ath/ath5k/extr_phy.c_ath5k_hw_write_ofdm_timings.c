
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_channel {scalar_t__ hw_value; int center_freq; } ;
struct ath5k_hw {scalar_t__ ah_version; int ah_bwmode; } ;


 scalar_t__ AR5K_AR5212 ;



 scalar_t__ AR5K_MODE_11B ;
 int AR5K_PHY_TIMING_3 ;
 int AR5K_PHY_TIMING_3_DSC_EXP ;
 int AR5K_PHY_TIMING_3_DSC_MAN ;
 int AR5K_REG_WRITE_BITS (struct ath5k_hw*,int ,int ,int) ;
 int BUG_ON (int) ;
 int EINVAL ;
 int ilog2 (int) ;

__attribute__((used)) static inline int
ath5k_hw_write_ofdm_timings(struct ath5k_hw *ah,
    struct ieee80211_channel *channel)
{

 u32 coef_scaled, coef_exp, coef_man,
  ds_coef_exp, ds_coef_man, clock;

 BUG_ON(!(ah->ah_version == AR5K_AR5212) ||
  (channel->hw_value == AR5K_MODE_11B));





 switch (ah->ah_bwmode) {
 case 129:
  clock = 40 * 2;
  break;
 case 130:
  clock = 40 / 2;
  break;
 case 128:
  clock = 40 / 4;
  break;
 default:
  clock = 40;
  break;
 }
 coef_scaled = ((5 * (clock << 24)) / 2) / channel->center_freq;



 coef_exp = ilog2(coef_scaled);


 if (!coef_scaled || !coef_exp)
  return -EINVAL;


 coef_exp = 14 - (coef_exp - 24);




 coef_man = coef_scaled +
  (1 << (24 - coef_exp - 1));



 ds_coef_man = coef_man >> (24 - coef_exp);
 ds_coef_exp = coef_exp - 16;

 AR5K_REG_WRITE_BITS(ah, AR5K_PHY_TIMING_3,
  AR5K_PHY_TIMING_3_DSC_MAN, ds_coef_man);
 AR5K_REG_WRITE_BITS(ah, AR5K_PHY_TIMING_3,
  AR5K_PHY_TIMING_3_DSC_EXP, ds_coef_exp);

 return 0;
}
