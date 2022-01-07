
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct rtc_at32ap700x {int dummy; } ;
struct device {int dummy; } ;


 int VAL ;
 struct rtc_at32ap700x* dev_get_drvdata (struct device*) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;
 int rtc_writel (struct rtc_at32ap700x*,int ,unsigned long) ;

__attribute__((used)) static int at32_rtc_settime(struct device *dev, struct rtc_time *tm)
{
 struct rtc_at32ap700x *rtc = dev_get_drvdata(dev);
 unsigned long now;
 int ret;

 ret = rtc_tm_to_time(tm, &now);
 if (ret == 0)
  rtc_writel(rtc, VAL, now);

 return ret;
}
