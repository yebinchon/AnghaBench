
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ IWLAGN_RTC_INST_LOWER_BOUND ;
 scalar_t__ IWLAGN_RTC_INST_UPPER_BOUND ;
 scalar_t__ iwlagn_hw_valid_rtc_data_addr (scalar_t__) ;

__attribute__((used)) static bool iwl_testmode_valid_hw_addr(u32 addr)
{
 if (iwlagn_hw_valid_rtc_data_addr(addr))
  return 1;

 if (IWLAGN_RTC_INST_LOWER_BOUND <= addr &&
     addr < IWLAGN_RTC_INST_UPPER_BOUND)
  return 1;

 return 0;
}
