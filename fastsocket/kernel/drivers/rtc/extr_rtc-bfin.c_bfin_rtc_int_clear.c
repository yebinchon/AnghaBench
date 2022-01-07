
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int bfin_read_RTC_ICTL () ;
 int bfin_write_RTC_ICTL (int) ;

__attribute__((used)) static void bfin_rtc_int_clear(u16 rtc_int)
{
 bfin_write_RTC_ICTL(bfin_read_RTC_ICTL() & rtc_int);
}
