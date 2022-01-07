
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;
struct ds1286_priv {int lock; } ;
struct device {int dummy; } ;


 int HZ ;
 int RTC_CMD ;
 int RTC_DATE ;
 int RTC_HOURS ;
 int RTC_MINUTES ;
 int RTC_MONTH ;
 int RTC_SECONDS ;
 int RTC_TE ;
 int RTC_YEAR ;
 int barrier () ;
 void* bcd2bin (int) ;
 struct ds1286_priv* dev_get_drvdata (struct device*) ;
 int ds1286_rtc_read (struct ds1286_priv*,int ) ;
 int ds1286_rtc_write (struct ds1286_priv*,unsigned char,int ) ;
 unsigned long jiffies ;
 int rtc_valid_tm (struct rtc_time*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int ds1286_read_time(struct device *dev, struct rtc_time *tm)
{
 struct ds1286_priv *priv = dev_get_drvdata(dev);
 unsigned char save_control;
 unsigned long flags;
 unsigned long uip_watchdog = jiffies;
 if (ds1286_rtc_read(priv, RTC_CMD) & RTC_TE)
  while (time_before(jiffies, uip_watchdog + 2*HZ/100))
   barrier();







 spin_lock_irqsave(&priv->lock, flags);
 save_control = ds1286_rtc_read(priv, RTC_CMD);
 ds1286_rtc_write(priv, (save_control|RTC_TE), RTC_CMD);

 tm->tm_sec = ds1286_rtc_read(priv, RTC_SECONDS);
 tm->tm_min = ds1286_rtc_read(priv, RTC_MINUTES);
 tm->tm_hour = ds1286_rtc_read(priv, RTC_HOURS) & 0x3f;
 tm->tm_mday = ds1286_rtc_read(priv, RTC_DATE);
 tm->tm_mon = ds1286_rtc_read(priv, RTC_MONTH) & 0x1f;
 tm->tm_year = ds1286_rtc_read(priv, RTC_YEAR);

 ds1286_rtc_write(priv, save_control, RTC_CMD);
 spin_unlock_irqrestore(&priv->lock, flags);

 tm->tm_sec = bcd2bin(tm->tm_sec);
 tm->tm_min = bcd2bin(tm->tm_min);
 tm->tm_hour = bcd2bin(tm->tm_hour);
 tm->tm_mday = bcd2bin(tm->tm_mday);
 tm->tm_mon = bcd2bin(tm->tm_mon);
 tm->tm_year = bcd2bin(tm->tm_year);





 if (tm->tm_year < 45)
  tm->tm_year += 30;
 tm->tm_year += 40;
 if (tm->tm_year < 70)
  tm->tm_year += 100;

 tm->tm_mon--;

 return rtc_valid_tm(tm);
}
