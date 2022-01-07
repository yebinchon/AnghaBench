
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ath_hw {int dummy; } ;


 int AR_NO_SPUR ;

__attribute__((used)) static u16 ath9k_hw_ar9300_get_spur_channel(struct ath_hw *ah,
         u16 i, bool is2GHz)
{
 return AR_NO_SPUR;
}
