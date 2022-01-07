
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 scalar_t__ OLC_FOR_AR9280_20_LATER ;
 scalar_t__ OLC_FOR_AR9287_10_LATER ;
 int ar9280_hw_olc_temp_compensation (struct ath_hw*) ;
 int ar9287_hw_olc_temp_compensation (struct ath_hw*) ;

__attribute__((used)) static void ar9002_hw_olc_temp_compensation(struct ath_hw *ah)
{
 if (OLC_FOR_AR9287_10_LATER)
  ar9287_hw_olc_temp_compensation(ah);
 else if (OLC_FOR_AR9280_20_LATER)
  ar9280_hw_olc_temp_compensation(ah);
}
