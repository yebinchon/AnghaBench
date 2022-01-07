
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int SYS_TOYREAD ;
 unsigned long au_readl (int ) ;
 int rtc_time_to_tm (unsigned long,struct rtc_time*) ;
 int rtc_valid_tm (struct rtc_time*) ;

__attribute__((used)) static int au1xtoy_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 unsigned long t;

 t = au_readl(SYS_TOYREAD);

 rtc_time_to_tm(t, tm);

 return rtc_valid_tm(tm);
}
