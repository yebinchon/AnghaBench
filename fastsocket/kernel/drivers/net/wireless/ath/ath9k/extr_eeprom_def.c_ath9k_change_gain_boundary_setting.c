
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ath_hw {int dummy; } ;
typedef scalar_t__ int8_t ;
typedef int int16_t ;


 scalar_t__ AR5416_PWR_TABLE_OFFSET_DB ;
 scalar_t__ AR_SREV_9280_20_OR_LATER (struct ath_hw*) ;
 size_t MAX_RATE_POWER ;
 scalar_t__ min (size_t,size_t) ;

__attribute__((used)) static int16_t ath9k_change_gain_boundary_setting(struct ath_hw *ah,
    u16 *gb,
    u16 numXpdGain,
    u16 pdGainOverlap_t2,
    int8_t pwr_table_offset,
    int16_t *diff)

{
 u16 k;






 if (AR_SREV_9280_20_OR_LATER(ah)) {
  u16 gb_limit;

  if (AR5416_PWR_TABLE_OFFSET_DB != pwr_table_offset) {

   *diff = (u16)(pwr_table_offset - AR5416_PWR_TABLE_OFFSET_DB);

   *diff *= 2;



   for (k = 0; k < numXpdGain; k++)
    gb[k] = (u16)(gb[k] - *diff);
  }



  gb_limit = (u16)(MAX_RATE_POWER - pdGainOverlap_t2);

  for (k = 0; k < numXpdGain; k++)
   gb[k] = (u16)min(gb_limit, gb[k]);
 }

 return *diff;
}
