
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_hour; int tm_min; int tm_mon; int tm_mday; int tm_year; int tm_sec; } ;


 int get_rtc_time (struct rtc_time*) ;
 int printk (char*,int,int,int ,int,int,int) ;

__attribute__((used)) static unsigned int read_magic_time(void)
{
 struct rtc_time time;
 unsigned int val;

 get_rtc_time(&time);
 printk("Time: %2d:%02d:%02d  Date: %02d/%02d/%02d\n",
  time.tm_hour, time.tm_min, time.tm_sec,
  time.tm_mon + 1, time.tm_mday, time.tm_year % 100);
 val = time.tm_year;
 if (val > 100)
  val -= 100;
 val += time.tm_mon * 100;
 val += (time.tm_mday-1) * 100 * 12;
 val += time.tm_hour * 100 * 12 * 28;
 val += (time.tm_min / 3) * 100 * 12 * 28 * 24;
 return val;
}
