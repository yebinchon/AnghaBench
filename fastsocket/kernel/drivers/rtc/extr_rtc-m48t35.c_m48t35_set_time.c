
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char u8 ;
struct rtc_time {int tm_year; int tm_mon; unsigned char tm_mday; unsigned char tm_hour; unsigned char tm_min; unsigned char tm_sec; } ;
struct m48t35_priv {int lock; TYPE_1__* reg; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int control; int sec; int min; int hour; int date; int month; int year; } ;


 int EINVAL ;
 unsigned char M48T35_RTC_SET ;
 void* bin2bcd (unsigned int) ;
 struct m48t35_priv* dev_get_drvdata (struct device*) ;
 unsigned char readb (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writeb (unsigned char,int *) ;

__attribute__((used)) static int m48t35_set_time(struct device *dev, struct rtc_time *tm)
{
 struct m48t35_priv *priv = dev_get_drvdata(dev);
 unsigned char mon, day, hrs, min, sec;
 unsigned int yrs;
 u8 control;

 yrs = tm->tm_year + 1900;
 mon = tm->tm_mon + 1;
 day = tm->tm_mday;
 hrs = tm->tm_hour;
 min = tm->tm_min;
 sec = tm->tm_sec;

 if (yrs < 1970)
  return -EINVAL;

 yrs -= 1970;
 if (yrs > 255)
  return -EINVAL;

 if (yrs > 169)
  return -EINVAL;

 if (yrs >= 100)
  yrs -= 100;

 sec = bin2bcd(sec);
 min = bin2bcd(min);
 hrs = bin2bcd(hrs);
 day = bin2bcd(day);
 mon = bin2bcd(mon);
 yrs = bin2bcd(yrs);

 spin_lock_irq(&priv->lock);
 control = readb(&priv->reg->control);
 writeb(control | M48T35_RTC_SET, &priv->reg->control);
 writeb(yrs, &priv->reg->year);
 writeb(mon, &priv->reg->month);
 writeb(day, &priv->reg->date);
 writeb(hrs, &priv->reg->hour);
 writeb(min, &priv->reg->min);
 writeb(sec, &priv->reg->sec);
 writeb(control, &priv->reg->control);
 spin_unlock_irq(&priv->lock);
 return 0;
}
