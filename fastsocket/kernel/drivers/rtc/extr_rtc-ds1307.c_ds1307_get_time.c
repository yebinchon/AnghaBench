
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; int tm_year; } ;
struct ds1307 {int (* read_block_data ) (int ,int ,int,int*) ;int* regs; int offset; int client; } ;
struct device {int dummy; } ;


 size_t DS1307_REG_HOUR ;
 size_t DS1307_REG_MDAY ;
 size_t DS1307_REG_MIN ;
 size_t DS1307_REG_MONTH ;
 size_t DS1307_REG_SECS ;
 size_t DS1307_REG_WDAY ;
 size_t DS1307_REG_YEAR ;
 int EIO ;
 void* bcd2bin (int) ;
 int dev_dbg (struct device*,char*,char*,int,int,int,int,int,int,int) ;
 int dev_err (struct device*,char*,char*,int) ;
 struct ds1307* dev_get_drvdata (struct device*) ;
 int rtc_valid_tm (struct rtc_time*) ;
 int stub1 (int ,int ,int,int*) ;

__attribute__((used)) static int ds1307_get_time(struct device *dev, struct rtc_time *t)
{
 struct ds1307 *ds1307 = dev_get_drvdata(dev);
 int tmp;


 tmp = ds1307->read_block_data(ds1307->client,
  ds1307->offset, 7, ds1307->regs);
 if (tmp != 7) {
  dev_err(dev, "%s error %d\n", "read", tmp);
  return -EIO;
 }

 dev_dbg(dev, "%s: %02x %02x %02x %02x %02x %02x %02x\n",
   "read",
   ds1307->regs[0], ds1307->regs[1],
   ds1307->regs[2], ds1307->regs[3],
   ds1307->regs[4], ds1307->regs[5],
   ds1307->regs[6]);

 t->tm_sec = bcd2bin(ds1307->regs[DS1307_REG_SECS] & 0x7f);
 t->tm_min = bcd2bin(ds1307->regs[DS1307_REG_MIN] & 0x7f);
 tmp = ds1307->regs[DS1307_REG_HOUR] & 0x3f;
 t->tm_hour = bcd2bin(tmp);
 t->tm_wday = bcd2bin(ds1307->regs[DS1307_REG_WDAY] & 0x07) - 1;
 t->tm_mday = bcd2bin(ds1307->regs[DS1307_REG_MDAY] & 0x3f);
 tmp = ds1307->regs[DS1307_REG_MONTH] & 0x1f;
 t->tm_mon = bcd2bin(tmp) - 1;


 t->tm_year = bcd2bin(ds1307->regs[DS1307_REG_YEAR]) + 100;

 dev_dbg(dev, "%s secs=%d, mins=%d, "
  "hours=%d, mday=%d, mon=%d, year=%d, wday=%d\n",
  "read", t->tm_sec, t->tm_min,
  t->tm_hour, t->tm_mday,
  t->tm_mon, t->tm_year, t->tm_wday);


 return rtc_valid_tm(t);
}
