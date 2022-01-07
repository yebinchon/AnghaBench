
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath5k_hw {int dummy; } ;





 int AR5K_PHY_AGCCTL ;
 int AR5K_PHY_AGCCTL_OFDM_DIV_DIS ;
 int AR5K_PHY_FAST_ANT_DIV ;
 int AR5K_PHY_FAST_ANT_DIV_EN ;
 int AR5K_PHY_RESTART ;
 int AR5K_PHY_RESTART_DIV_GC ;
 int AR5K_REG_DISABLE_BITS (struct ath5k_hw*,int ,int ) ;
 int AR5K_REG_ENABLE_BITS (struct ath5k_hw*,int ,int ) ;
 int AR5K_REG_WRITE_BITS (struct ath5k_hw*,int ,int ,int) ;

__attribute__((used)) static void
ath5k_hw_set_fast_div(struct ath5k_hw *ah, u8 ee_mode, bool enable)
{
 switch (ee_mode) {
 case 128:


 case 130:
  if (enable)
   AR5K_REG_DISABLE_BITS(ah, AR5K_PHY_AGCCTL,
     AR5K_PHY_AGCCTL_OFDM_DIV_DIS);
  else
   AR5K_REG_ENABLE_BITS(ah, AR5K_PHY_AGCCTL,
     AR5K_PHY_AGCCTL_OFDM_DIV_DIS);
  break;
 case 129:
  AR5K_REG_ENABLE_BITS(ah, AR5K_PHY_AGCCTL,
     AR5K_PHY_AGCCTL_OFDM_DIV_DIS);
  break;
 default:
  return;
 }

 if (enable) {
  AR5K_REG_WRITE_BITS(ah, AR5K_PHY_RESTART,
    AR5K_PHY_RESTART_DIV_GC, 4);

  AR5K_REG_ENABLE_BITS(ah, AR5K_PHY_FAST_ANT_DIV,
     AR5K_PHY_FAST_ANT_DIV_EN);
 } else {
  AR5K_REG_WRITE_BITS(ah, AR5K_PHY_RESTART,
    AR5K_PHY_RESTART_DIV_GC, 0);

  AR5K_REG_DISABLE_BITS(ah, AR5K_PHY_FAST_ANT_DIV,
     AR5K_PHY_FAST_ANT_DIV_EN);
 }
}
