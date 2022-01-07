
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct ath_hw {int dummy; } ;


 int AR_TSF_L32 ;
 int AR_TSF_U32 ;
 int ATH9K_MAX_TSF_READ ;
 scalar_t__ REG_READ (struct ath_hw*,int ) ;
 int WARN_ON (int) ;

u64 ath9k_hw_gettsf64(struct ath_hw *ah)
{
 u32 tsf_lower, tsf_upper1, tsf_upper2;
 int i;

 tsf_upper1 = REG_READ(ah, AR_TSF_U32);
 for (i = 0; i < ATH9K_MAX_TSF_READ; i++) {
  tsf_lower = REG_READ(ah, AR_TSF_L32);
  tsf_upper2 = REG_READ(ah, AR_TSF_U32);
  if (tsf_upper2 == tsf_upper1)
   break;
  tsf_upper1 = tsf_upper2;
 }

 WARN_ON( i == ATH9K_MAX_TSF_READ );

 return (((u64)tsf_upper1 << 32) | tsf_lower);
}
