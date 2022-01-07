
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_mon; scalar_t__ tm_year; int tm_sec; int tm_mday; } ;
struct rtc_wkalrm {struct rtc_time time; int enabled; } ;
struct rtc_device {int dev; } ;


 int dev_dbg (int *,char*,char*) ;
 int dev_warn (int *,char*) ;
 int memcpy (struct rtc_time*,struct rtc_time*,int) ;
 unsigned int rtc_month_days (int,scalar_t__) ;
 int rtc_read_alarm_internal (struct rtc_device*,struct rtc_wkalrm*) ;
 int rtc_read_time (struct rtc_device*,struct rtc_time*) ;
 int rtc_time_to_tm (unsigned long,struct rtc_time*) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;
 scalar_t__ rtc_valid_tm (struct rtc_time*) ;

int rtc_read_alarm(struct rtc_device *rtc, struct rtc_wkalrm *alarm)
{
 int err;
 struct rtc_time before, now;
 int first_time = 1;
 unsigned long t_now, t_alm;
 enum { none, day, month, year } missing = none;
 unsigned days;
 err = rtc_read_time(rtc, &before);
 if (err < 0)
  return err;
 do {
  if (!first_time)
   memcpy(&before, &now, sizeof(struct rtc_time));
  first_time = 0;


  err = rtc_read_alarm_internal(rtc, alarm);
  if (err)
   return err;
  if (!alarm->enabled)
   return 0;


  if (rtc_valid_tm(&alarm->time) == 0)
   return 0;


  err = rtc_read_time(rtc, &now);
  if (err < 0)
   return err;


 } while ( before.tm_min != now.tm_min
   || before.tm_hour != now.tm_hour
   || before.tm_mon != now.tm_mon
   || before.tm_year != now.tm_year);




 if (alarm->time.tm_sec == -1)
  alarm->time.tm_sec = now.tm_sec;
 if (alarm->time.tm_min == -1)
  alarm->time.tm_min = now.tm_min;
 if (alarm->time.tm_hour == -1)
  alarm->time.tm_hour = now.tm_hour;


 if (alarm->time.tm_mday == -1) {
  alarm->time.tm_mday = now.tm_mday;
  missing = day;
 }
 if (alarm->time.tm_mon == -1) {
  alarm->time.tm_mon = now.tm_mon;
  if (missing == none)
   missing = month;
 }
 if (alarm->time.tm_year == -1) {
  alarm->time.tm_year = now.tm_year;
  if (missing == none)
   missing = year;
 }


 rtc_tm_to_time(&now, &t_now);
 rtc_tm_to_time(&alarm->time, &t_alm);
 if (t_now < t_alm)
  goto done;

 switch (missing) {






 case day:
  dev_dbg(&rtc->dev, "alarm rollover: %s\n", "day");
  t_alm += 24 * 60 * 60;
  rtc_time_to_tm(t_alm, &alarm->time);
  break;






 case month:
  dev_dbg(&rtc->dev, "alarm rollover: %s\n", "month");
  do {
   if (alarm->time.tm_mon < 11)
    alarm->time.tm_mon++;
   else {
    alarm->time.tm_mon = 0;
    alarm->time.tm_year++;
   }
   days = rtc_month_days(alarm->time.tm_mon,
     alarm->time.tm_year);
  } while (days < alarm->time.tm_mday);
  break;


 case year:
  dev_dbg(&rtc->dev, "alarm rollover: %s\n", "year");
  do {
   alarm->time.tm_year++;
  } while (rtc_valid_tm(&alarm->time) != 0);
  break;

 default:
  dev_warn(&rtc->dev, "alarm rollover not handled\n");
 }

done:
 return 0;
}
