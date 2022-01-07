
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtc_time {void* tm_wday; void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct fm3130 {int* regs; int msg; TYPE_2__* client; int data_valid; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int EIO ;
 int FM3130_MODE_NORMAL ;
 int FM3130_MODE_READ ;
 size_t FM3130_RTC_DATE ;
 size_t FM3130_RTC_DAY ;
 size_t FM3130_RTC_HOURS ;
 size_t FM3130_RTC_MINUTES ;
 size_t FM3130_RTC_MONTHS ;
 size_t FM3130_RTC_SECONDS ;
 size_t FM3130_RTC_YEARS ;
 void* bcd2bin (int) ;
 int dev_dbg (struct device*,char*,char*,int,int,int,int,int,int,int,...) ;
 int dev_err (struct device*,char*,char*,int) ;
 struct fm3130* dev_get_drvdata (struct device*) ;
 int fm3130_rtc_mode (struct device*,int ) ;
 int i2c_transfer (int ,int ,int) ;
 int rtc_valid_tm (struct rtc_time*) ;
 int to_i2c_adapter (int ) ;

__attribute__((used)) static int fm3130_get_time(struct device *dev, struct rtc_time *t)
{
 struct fm3130 *fm3130 = dev_get_drvdata(dev);
 int tmp;

 if (!fm3130->data_valid) {




  return -EIO;
 }
 fm3130_rtc_mode(dev, FM3130_MODE_READ);


 tmp = i2c_transfer(to_i2c_adapter(fm3130->client->dev.parent),
   fm3130->msg, 2);
 if (tmp != 2) {
  dev_err(dev, "%s error %d\n", "read", tmp);
  return -EIO;
 }

 fm3130_rtc_mode(dev, FM3130_MODE_NORMAL);

 dev_dbg(dev, "%s: %02x %02x %02x %02x %02x %02x %02x %02x"
   "%02x %02x %02x %02x %02x %02x %02x\n",
   "read",
   fm3130->regs[0], fm3130->regs[1],
   fm3130->regs[2], fm3130->regs[3],
   fm3130->regs[4], fm3130->regs[5],
   fm3130->regs[6], fm3130->regs[7],
   fm3130->regs[8], fm3130->regs[9],
   fm3130->regs[0xa], fm3130->regs[0xb],
   fm3130->regs[0xc], fm3130->regs[0xd],
   fm3130->regs[0xe]);

 t->tm_sec = bcd2bin(fm3130->regs[FM3130_RTC_SECONDS] & 0x7f);
 t->tm_min = bcd2bin(fm3130->regs[FM3130_RTC_MINUTES] & 0x7f);
 tmp = fm3130->regs[FM3130_RTC_HOURS] & 0x3f;
 t->tm_hour = bcd2bin(tmp);
 t->tm_wday = bcd2bin(fm3130->regs[FM3130_RTC_DAY] & 0x07) - 1;
 t->tm_mday = bcd2bin(fm3130->regs[FM3130_RTC_DATE] & 0x3f);
 tmp = fm3130->regs[FM3130_RTC_MONTHS] & 0x1f;
 t->tm_mon = bcd2bin(tmp) - 1;


 t->tm_year = bcd2bin(fm3130->regs[FM3130_RTC_YEARS]) + 100;

 dev_dbg(dev, "%s secs=%d, mins=%d, "
  "hours=%d, mday=%d, mon=%d, year=%d, wday=%d\n",
  "read", t->tm_sec, t->tm_min,
  t->tm_hour, t->tm_mday,
  t->tm_mon, t->tm_year, t->tm_wday);


 return rtc_valid_tm(t);
}
