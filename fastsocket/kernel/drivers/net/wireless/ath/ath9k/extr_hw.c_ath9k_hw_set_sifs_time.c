
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ath_hw {int dummy; } ;


 int AR_D_GBL_IFS_SIFS ;
 int REG_WRITE (struct ath_hw*,int ,scalar_t__) ;
 scalar_t__ ath9k_hw_mac_to_clks (struct ath_hw*,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

__attribute__((used)) static void ath9k_hw_set_sifs_time(struct ath_hw *ah, u32 us)
{
 u32 val = ath9k_hw_mac_to_clks(ah, us - 2);
 val = min(val, (u32) 0xFFFF);
 REG_WRITE(ah, AR_D_GBL_IFS_SIFS, val);
}
