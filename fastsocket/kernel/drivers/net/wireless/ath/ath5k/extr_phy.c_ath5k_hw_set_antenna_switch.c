
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ath5k_hw {scalar_t__ ah_ant_mode; int** ah_ant_ctl; } ;


 scalar_t__ AR5K_ANTMODE_FIXED_A ;
 scalar_t__ AR5K_ANTMODE_FIXED_B ;
 size_t AR5K_ANT_CTL ;
 size_t AR5K_ANT_SWTABLE_A ;
 size_t AR5K_ANT_SWTABLE_B ;
 int AR5K_PHY_ANT_CTL ;
 int AR5K_PHY_ANT_CTL_SWTABLE_IDLE ;
 int AR5K_PHY_ANT_CTL_TXRX_EN ;
 int AR5K_PHY_ANT_SWITCH_TABLE_0 ;
 int AR5K_PHY_ANT_SWITCH_TABLE_1 ;
 int AR5K_REG_WRITE_BITS (struct ath5k_hw*,int ,int ,int) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;

void
ath5k_hw_set_antenna_switch(struct ath5k_hw *ah, u8 ee_mode)
{
 u8 ant0, ant1;





 if (ah->ah_ant_mode == AR5K_ANTMODE_FIXED_A)
  ant0 = ant1 = AR5K_ANT_SWTABLE_A;
 else if (ah->ah_ant_mode == AR5K_ANTMODE_FIXED_B)
  ant0 = ant1 = AR5K_ANT_SWTABLE_B;
 else {
  ant0 = AR5K_ANT_SWTABLE_A;
  ant1 = AR5K_ANT_SWTABLE_B;
 }


 AR5K_REG_WRITE_BITS(ah, AR5K_PHY_ANT_CTL,
   AR5K_PHY_ANT_CTL_SWTABLE_IDLE,
   (ah->ah_ant_ctl[ee_mode][AR5K_ANT_CTL] |
   AR5K_PHY_ANT_CTL_TXRX_EN));


 ath5k_hw_reg_write(ah, ah->ah_ant_ctl[ee_mode][ant0],
  AR5K_PHY_ANT_SWITCH_TABLE_0);
 ath5k_hw_reg_write(ah, ah->ah_ant_ctl[ee_mode][ant1],
  AR5K_PHY_ANT_SWITCH_TABLE_1);
}
