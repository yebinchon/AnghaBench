
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_wday; int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;


 int pr_debug (char*,char const*,int,int ) ;

__attribute__((used)) static void _dump_tm(const struct rtc_time *tm, const char* func, int line)
{
 pr_debug("%s:%d tm_sec  %d\n", func, line, tm->tm_sec);
 pr_debug("%s:%d tm_min  %d\n", func, line, tm->tm_min);
 pr_debug("%s:%d tm_hour %d\n", func, line, tm->tm_hour);
 pr_debug("%s:%d tm_mday %d\n", func, line, tm->tm_mday);
 pr_debug("%s:%d tm_mon  %d\n", func, line, tm->tm_mon);
 pr_debug("%s:%d tm_year %d\n", func, line, tm->tm_year);
 pr_debug("%s:%d tm_wday %d\n", func, line, tm->tm_wday);
}
