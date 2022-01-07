
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tm_yday; } ;
struct bfin_rtc {TYPE_1__ rtc_alarm; } ;


 int RTC_ISTAT_ALARM ;
 int RTC_ISTAT_ALARM_DAY ;
 int bfin_rtc_int_set (int ) ;

__attribute__((used)) static void bfin_rtc_int_set_alarm(struct bfin_rtc *rtc)
{



 bfin_rtc_int_set(rtc->rtc_alarm.tm_yday == -1 ? RTC_ISTAT_ALARM : RTC_ISTAT_ALARM_DAY);
}
