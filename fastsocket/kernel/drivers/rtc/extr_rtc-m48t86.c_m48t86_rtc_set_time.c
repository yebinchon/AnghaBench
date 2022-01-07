
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_wday; } ;
struct TYPE_2__ {struct m48t86_ops* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct m48t86_ops {unsigned char (* readbyte ) (int ) ;int (* writebyte ) (unsigned char,int ) ;} ;
struct device {int dummy; } ;


 int M48T86_REG_B ;
 unsigned char M48T86_REG_B_DM ;
 unsigned char M48T86_REG_B_H24 ;
 unsigned char M48T86_REG_B_SET ;
 int M48T86_REG_DOM ;
 int M48T86_REG_DOW ;
 int M48T86_REG_HOUR ;
 int M48T86_REG_MIN ;
 int M48T86_REG_MONTH ;
 int M48T86_REG_SEC ;
 int M48T86_REG_YEAR ;
 int bin2bcd (int) ;
 unsigned char stub1 (int ) ;
 int stub10 (int,int ) ;
 int stub11 (int,int ) ;
 int stub12 (int,int ) ;
 int stub13 (int,int ) ;
 int stub14 (int,int ) ;
 int stub15 (int,int ) ;
 int stub16 (int,int ) ;
 int stub17 (unsigned char,int ) ;
 int stub2 (unsigned char,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;
 int stub7 (int,int ) ;
 int stub8 (int,int ) ;
 int stub9 (int,int ) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int m48t86_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 unsigned char reg;
 struct platform_device *pdev = to_platform_device(dev);
 struct m48t86_ops *ops = pdev->dev.platform_data;

 reg = ops->readbyte(M48T86_REG_B);


 reg |= M48T86_REG_B_SET | M48T86_REG_B_H24;
 ops->writebyte(reg, M48T86_REG_B);

 if (reg & M48T86_REG_B_DM) {

  ops->writebyte(tm->tm_sec, M48T86_REG_SEC);
  ops->writebyte(tm->tm_min, M48T86_REG_MIN);
  ops->writebyte(tm->tm_hour, M48T86_REG_HOUR);
  ops->writebyte(tm->tm_mday, M48T86_REG_DOM);
  ops->writebyte(tm->tm_mon + 1, M48T86_REG_MONTH);
  ops->writebyte(tm->tm_year % 100, M48T86_REG_YEAR);
  ops->writebyte(tm->tm_wday, M48T86_REG_DOW);
 } else {

  ops->writebyte(bin2bcd(tm->tm_sec), M48T86_REG_SEC);
  ops->writebyte(bin2bcd(tm->tm_min), M48T86_REG_MIN);
  ops->writebyte(bin2bcd(tm->tm_hour), M48T86_REG_HOUR);
  ops->writebyte(bin2bcd(tm->tm_mday), M48T86_REG_DOM);
  ops->writebyte(bin2bcd(tm->tm_mon + 1), M48T86_REG_MONTH);
  ops->writebyte(bin2bcd(tm->tm_year % 100), M48T86_REG_YEAR);
  ops->writebyte(bin2bcd(tm->tm_wday), M48T86_REG_DOW);
 }


 reg &= ~M48T86_REG_B_SET;
 ops->writebyte(reg, M48T86_REG_B);

 return 0;
}
