
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;


 int AICA_RTC_SECS_H ;
 int AICA_RTC_SECS_L ;
 scalar_t__ TWENTY_YEARS ;
 int ctrl_inl (int ) ;

__attribute__((used)) static void aica_rtc_gettimeofday(struct timespec *ts)
{
 unsigned long val1, val2;

 do {
  val1 = ((ctrl_inl(AICA_RTC_SECS_H) & 0xffff) << 16) |
   (ctrl_inl(AICA_RTC_SECS_L) & 0xffff);

  val2 = ((ctrl_inl(AICA_RTC_SECS_H) & 0xffff) << 16) |
   (ctrl_inl(AICA_RTC_SECS_L) & 0xffff);
 } while (val1 != val2);

 ts->tv_sec = val1 - TWENTY_YEARS;


 ts->tv_nsec = 0;
}
