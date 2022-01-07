
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;
struct m48t35_priv {int lock; TYPE_1__* reg; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int control; int year; int month; int date; int hour; int min; int sec; } ;


 int M48T35_RTC_READ ;
 void* bcd2bin (int) ;
 struct m48t35_priv* dev_get_drvdata (struct device*) ;
 void* readb (int *) ;
 int rtc_valid_tm (struct rtc_time*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writeb (int,int *) ;

__attribute__((used)) static int m48t35_read_time(struct device *dev, struct rtc_time *tm)
{
 struct m48t35_priv *priv = dev_get_drvdata(dev);
 u8 control;







 spin_lock_irq(&priv->lock);
 control = readb(&priv->reg->control);
 writeb(control | M48T35_RTC_READ, &priv->reg->control);
 tm->tm_sec = readb(&priv->reg->sec);
 tm->tm_min = readb(&priv->reg->min);
 tm->tm_hour = readb(&priv->reg->hour);
 tm->tm_mday = readb(&priv->reg->date);
 tm->tm_mon = readb(&priv->reg->month);
 tm->tm_year = readb(&priv->reg->year);
 writeb(control, &priv->reg->control);
 spin_unlock_irq(&priv->lock);

 tm->tm_sec = bcd2bin(tm->tm_sec);
 tm->tm_min = bcd2bin(tm->tm_min);
 tm->tm_hour = bcd2bin(tm->tm_hour);
 tm->tm_mday = bcd2bin(tm->tm_mday);
 tm->tm_mon = bcd2bin(tm->tm_mon);
 tm->tm_year = bcd2bin(tm->tm_year);





 tm->tm_year += 70;
 if (tm->tm_year <= 69)
  tm->tm_year += 100;

 tm->tm_mon--;
 return rtc_valid_tm(tm);
}
