
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long time_t ;


 int AICA_RTC_SECS_H ;
 int AICA_RTC_SECS_L ;
 unsigned long const TWENTY_YEARS ;
 int ctrl_inl (int ) ;
 int ctrl_outl (unsigned long,int ) ;

__attribute__((used)) static int aica_rtc_settimeofday(const time_t secs)
{
 unsigned long val1, val2;
 unsigned long adj = secs + TWENTY_YEARS;

 do {
  ctrl_outl((adj & 0xffff0000) >> 16, AICA_RTC_SECS_H);
  ctrl_outl((adj & 0xffff), AICA_RTC_SECS_L);

  val1 = ((ctrl_inl(AICA_RTC_SECS_H) & 0xffff) << 16) |
   (ctrl_inl(AICA_RTC_SECS_L) & 0xffff);

  val2 = ((ctrl_inl(AICA_RTC_SECS_H) & 0xffff) << 16) |
   (ctrl_inl(AICA_RTC_SECS_L) & 0xffff);
 } while (val1 != val2);

 return 0;
}
