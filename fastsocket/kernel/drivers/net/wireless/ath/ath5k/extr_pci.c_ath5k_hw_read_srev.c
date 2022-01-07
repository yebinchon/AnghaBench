
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int ah_mac_srev; } ;


 int AR5K_SREV ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;

int ath5k_hw_read_srev(struct ath5k_hw *ah)
{
 ah->ah_mac_srev = ath5k_hw_reg_read(ah, AR5K_SREV);
 return 0;
}
