
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ IL39_RTC_DATA_LOWER_BOUND ;
 scalar_t__ IL39_RTC_DATA_UPPER_BOUND ;

__attribute__((used)) static inline int
il3945_hw_valid_rtc_data_addr(u32 addr)
{
 return (addr >= IL39_RTC_DATA_LOWER_BOUND &&
  addr < IL39_RTC_DATA_UPPER_BOUND);
}
