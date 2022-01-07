
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath5k_hw {int dummy; } ;


 int AR5K_BEACON ;
 int AR5K_BEACON_RESET_TSF ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;

void
ath5k_hw_reset_tsf(struct ath5k_hw *ah)
{
 u32 val;

 val = ath5k_hw_reg_read(ah, AR5K_BEACON) | AR5K_BEACON_RESET_TSF;







 ath5k_hw_reg_write(ah, val, AR5K_BEACON);
 ath5k_hw_reg_write(ah, val, AR5K_BEACON);
}
