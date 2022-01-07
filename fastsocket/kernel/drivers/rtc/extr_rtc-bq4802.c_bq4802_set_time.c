
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;
struct bq4802 {int (* read ) (struct bq4802*,int) ;int lock; int (* write ) (struct bq4802*,int,int) ;} ;


 int bin2bcd (int) ;
 struct bq4802* platform_get_drvdata (struct platform_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct bq4802*,int) ;
 int stub10 (struct bq4802*,int,int) ;
 int stub2 (struct bq4802*,int,int) ;
 int stub3 (struct bq4802*,int,int) ;
 int stub4 (struct bq4802*,int,int) ;
 int stub5 (struct bq4802*,int,int) ;
 int stub6 (struct bq4802*,int,int) ;
 int stub7 (struct bq4802*,int,int) ;
 int stub8 (struct bq4802*,int,int) ;
 int stub9 (struct bq4802*,int,int) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int bq4802_set_time(struct device *dev, struct rtc_time *tm)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct bq4802 *p = platform_get_drvdata(pdev);
 u8 sec, min, hrs, day, mon, yrs, century, val;
 unsigned long flags;
 unsigned int year;

 year = tm->tm_year + 1900;
 century = year / 100;
 yrs = year % 100;

 mon = tm->tm_mon + 1;
 day = tm->tm_mday;
 hrs = tm->tm_hour;
 min = tm->tm_min;
 sec = tm->tm_sec;

 sec = bin2bcd(sec);
 min = bin2bcd(min);
 hrs = bin2bcd(hrs);
 day = bin2bcd(day);
 mon = bin2bcd(mon);
 yrs = bin2bcd(yrs);
 century = bin2bcd(century);

 spin_lock_irqsave(&p->lock, flags);

 val = p->read(p, 0x0e);
 p->write(p, 0x0e, val | 0x08);

 p->write(p, 0x00, sec);
 p->write(p, 0x02, min);
 p->write(p, 0x04, hrs);
 p->write(p, 0x06, day);
 p->write(p, 0x09, mon);
 p->write(p, 0x0a, yrs);
 p->write(p, 0x0f, century);

 p->write(p, 0x0e, val);

 spin_unlock_irqrestore(&p->lock, flags);

 return 0;
}
