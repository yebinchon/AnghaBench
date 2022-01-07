
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ath_hw {int dummy; } ;


 int AR_TSF_L32 ;
 int AR_TSF_U32 ;
 int REG_WRITE (struct ath_hw*,int ,int) ;

void ath9k_hw_settsf64(struct ath_hw *ah, u64 tsf64)
{
 REG_WRITE(ah, AR_TSF_L32, tsf64 & 0xffffffff);
 REG_WRITE(ah, AR_TSF_U32, (tsf64 >> 32) & 0xffffffff);
}
