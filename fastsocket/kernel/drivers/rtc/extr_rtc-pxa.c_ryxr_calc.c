
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtc_time {int tm_year; int tm_mon; int tm_mday; } ;


 int RYxR_MONTH_S ;
 int RYxR_YEAR_S ;

__attribute__((used)) static u32 ryxr_calc(struct rtc_time *tm)
{
 return ((tm->tm_year + 1900) << RYxR_YEAR_S)
  | ((tm->tm_mon + 1) << RYxR_MONTH_S)
  | tm->tm_mday;
}
