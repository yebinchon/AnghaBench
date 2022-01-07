
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_hour; int tm_wday; int tm_year; void* tm_mon; void* tm_mday; void* tm_min; void* tm_sec; } ;
struct platform_device {int dummy; } ;
struct ds1216_regs {int sec; int min; int hour; int wday; int mday; int month; int year; } ;
struct ds1216_priv {int ioaddr; } ;
struct device {int dummy; } ;


 int DS1216_HOUR_1224 ;
 int DS1216_HOUR_AMPM ;
 void* bcd2bin (int) ;
 int ds1216_read (int ,int *) ;
 int ds1216_switch_ds_to_clock (int ) ;
 struct ds1216_priv* platform_get_drvdata (struct platform_device*) ;
 int rtc_valid_tm (struct rtc_time*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int ds1216_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct ds1216_priv *priv = platform_get_drvdata(pdev);
 struct ds1216_regs regs;

 ds1216_switch_ds_to_clock(priv->ioaddr);
 ds1216_read(priv->ioaddr, (u8 *)&regs);

 tm->tm_sec = bcd2bin(regs.sec);
 tm->tm_min = bcd2bin(regs.min);
 if (regs.hour & DS1216_HOUR_1224) {

  tm->tm_hour = bcd2bin(regs.hour & 0x1f);
  if (regs.hour & DS1216_HOUR_AMPM)
   tm->tm_hour += 12;
 } else
  tm->tm_hour = bcd2bin(regs.hour & 0x3f);
 tm->tm_wday = (regs.wday & 7) - 1;
 tm->tm_mday = bcd2bin(regs.mday & 0x3f);
 tm->tm_mon = bcd2bin(regs.month & 0x1f);
 tm->tm_year = bcd2bin(regs.year);
 if (tm->tm_year < 70)
  tm->tm_year += 100;

 return rtc_valid_tm(tm);
}
