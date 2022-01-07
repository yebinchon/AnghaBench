
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;


 scalar_t__ hp_sdc_rtc_do_read_bbrtc (struct rtc_time*) ;
 scalar_t__ memcmp (struct rtc_time*,struct rtc_time*,int) ;
 int memcpy (struct rtc_time*,struct rtc_time*,int) ;

__attribute__((used)) static int hp_sdc_rtc_read_bbrtc (struct rtc_time *rtctm)
{
 struct rtc_time tm, tm_last;
 int i = 0;



 if (hp_sdc_rtc_do_read_bbrtc(&tm_last)) return -1;
 if (hp_sdc_rtc_do_read_bbrtc(&tm)) return -1;

 while (memcmp(&tm, &tm_last, sizeof(struct rtc_time))) {
  if (i++ > 4) return -1;
  memcpy(&tm_last, &tm, sizeof(struct rtc_time));
  if (hp_sdc_rtc_do_read_bbrtc(&tm)) return -1;
 }

 memcpy(rtctm, &tm, sizeof(struct rtc_time));

 return 0;
}
