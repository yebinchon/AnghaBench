
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int SYS_CNTRL_C0S ;
 int SYS_COUNTER_CNTRL ;
 int SYS_TOYWRITE ;
 int au_readl (int ) ;
 int au_sync () ;
 int au_writel (unsigned long,int ) ;
 int msleep (int) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;

__attribute__((used)) static int au1xtoy_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 unsigned long t;

 rtc_tm_to_time(tm, &t);

 au_writel(t, SYS_TOYWRITE);
 au_sync();




 while (au_readl(SYS_COUNTER_CNTRL) & SYS_CNTRL_C0S)
  msleep(1);

 return 0;
}
