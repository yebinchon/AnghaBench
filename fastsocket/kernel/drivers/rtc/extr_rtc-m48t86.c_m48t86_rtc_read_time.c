
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtc_time {unsigned char tm_sec; unsigned char tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_wday; } ;
struct TYPE_2__ {struct m48t86_ops* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct m48t86_ops {unsigned char (* readbyte ) (int ) ;} ;
struct device {int dummy; } ;


 int M48T86_REG_B ;
 unsigned char M48T86_REG_B_DM ;
 unsigned char M48T86_REG_B_H24 ;
 int M48T86_REG_DOM ;
 int M48T86_REG_DOW ;
 int M48T86_REG_HOUR ;
 int M48T86_REG_MIN ;
 int M48T86_REG_MONTH ;
 int M48T86_REG_SEC ;
 int M48T86_REG_YEAR ;
 int bcd2bin (int) ;
 unsigned char stub1 (int ) ;
 int stub10 (int ) ;
 int stub11 (int ) ;
 int stub12 (int ) ;
 int stub13 (int ) ;
 int stub14 (int ) ;
 int stub15 (int ) ;
 int stub16 (int ) ;
 unsigned char stub2 (int ) ;
 unsigned char stub3 (int ) ;
 int stub4 (int ) ;
 int stub5 (int ) ;
 int stub6 (int ) ;
 int stub7 (int ) ;
 int stub8 (int ) ;
 int stub9 (int ) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int m48t86_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 unsigned char reg;
 struct platform_device *pdev = to_platform_device(dev);
 struct m48t86_ops *ops = pdev->dev.platform_data;

 reg = ops->readbyte(M48T86_REG_B);

 if (reg & M48T86_REG_B_DM) {

  tm->tm_sec = ops->readbyte(M48T86_REG_SEC);
  tm->tm_min = ops->readbyte(M48T86_REG_MIN);
  tm->tm_hour = ops->readbyte(M48T86_REG_HOUR) & 0x3F;
  tm->tm_mday = ops->readbyte(M48T86_REG_DOM);

  tm->tm_mon = ops->readbyte(M48T86_REG_MONTH) - 1;
  tm->tm_year = ops->readbyte(M48T86_REG_YEAR) + 100;
  tm->tm_wday = ops->readbyte(M48T86_REG_DOW);
 } else {

  tm->tm_sec = bcd2bin(ops->readbyte(M48T86_REG_SEC));
  tm->tm_min = bcd2bin(ops->readbyte(M48T86_REG_MIN));
  tm->tm_hour = bcd2bin(ops->readbyte(M48T86_REG_HOUR) & 0x3F);
  tm->tm_mday = bcd2bin(ops->readbyte(M48T86_REG_DOM));

  tm->tm_mon = bcd2bin(ops->readbyte(M48T86_REG_MONTH)) - 1;
  tm->tm_year = bcd2bin(ops->readbyte(M48T86_REG_YEAR)) + 100;
  tm->tm_wday = bcd2bin(ops->readbyte(M48T86_REG_DOW));
 }


 if (!(reg & M48T86_REG_B_H24))
  if (ops->readbyte(M48T86_REG_HOUR) & 0x80)
   tm->tm_hour += 12;

 return 0;
}
