
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR_D_GBL_IFS_SLOT ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 int ath9k_hw_mac_to_clks (struct ath_hw*,int ) ;
 int min (int ,int ) ;

__attribute__((used)) static void ath9k_hw_setslottime(struct ath_hw *ah, u32 us)
{
 u32 val = ath9k_hw_mac_to_clks(ah, us);
 val = min(val, (u32) 0xFFFF);
 REG_WRITE(ah, AR_D_GBL_IFS_SLOT, val);
}
