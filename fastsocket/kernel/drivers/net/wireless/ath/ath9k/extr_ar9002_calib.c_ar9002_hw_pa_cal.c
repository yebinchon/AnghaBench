
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int skipcount; } ;
struct ath_hw {TYPE_1__ pacal_info; } ;


 scalar_t__ AR_SREV_9271 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9285_12_OR_LATER (struct ath_hw*) ;
 int ar9271_hw_pa_cal (struct ath_hw*,int) ;
 int ar9285_hw_pa_cal (struct ath_hw*,int) ;

__attribute__((used)) static void ar9002_hw_pa_cal(struct ath_hw *ah, bool is_reset)
{
 if (AR_SREV_9271(ah)) {
  if (is_reset || !ah->pacal_info.skipcount)
   ar9271_hw_pa_cal(ah, is_reset);
  else
   ah->pacal_info.skipcount--;
 } else if (AR_SREV_9285_12_OR_LATER(ah)) {
  if (is_reset || !ah->pacal_info.skipcount)
   ar9285_hw_pa_cal(ah, is_reset);
  else
   ah->pacal_info.skipcount--;
 }
}
