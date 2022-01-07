
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;


 void* bcd2bin (void*) ;

__attribute__((used)) static void bcd2tm(struct rtc_time *tm)
{
 tm->tm_sec = bcd2bin(tm->tm_sec);
 tm->tm_min = bcd2bin(tm->tm_min);
 tm->tm_hour = bcd2bin(tm->tm_hour);
 tm->tm_mday = bcd2bin(tm->tm_mday);
 tm->tm_mon = bcd2bin(tm->tm_mon) - 1;

 tm->tm_year = bcd2bin(tm->tm_year) + 100;
}
