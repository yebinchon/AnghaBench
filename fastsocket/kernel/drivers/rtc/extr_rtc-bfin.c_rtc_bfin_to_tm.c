
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtc_time {int dummy; } ;


 int rtc_bfin_to_time (int ) ;
 int rtc_time_to_tm (int ,struct rtc_time*) ;

__attribute__((used)) static inline void rtc_bfin_to_tm(u32 rtc_bfin, struct rtc_time *tm)
{
 rtc_time_to_tm(rtc_bfin_to_time(rtc_bfin), tm);
}
