
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char u8 ;
struct TYPE_2__ {int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; int pending; } ;
struct i2c_client {int dummy; } ;
struct ds1307 {unsigned char* regs; int (* read_block_data ) (struct i2c_client*,int ,int,unsigned char*) ;int (* write_block_data ) (struct i2c_client*,int ,int,unsigned char*) ;int flags; } ;
struct device {int dummy; } ;


 unsigned char DS1337_BIT_A1I ;
 unsigned char DS1337_BIT_A1IE ;
 unsigned char DS1337_BIT_A2I ;
 unsigned char DS1337_BIT_A2IE ;
 int DS1339_REG_ALARM1_SECS ;
 int EINVAL ;
 int EIO ;
 int HAS_ALARM ;
 unsigned char bin2bcd (int ) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,...) ;
 struct ds1307* i2c_get_clientdata (struct i2c_client*) ;
 int stub1 (struct i2c_client*,int ,int,unsigned char*) ;
 int stub2 (struct i2c_client*,int ,int,unsigned char*) ;
 int test_bit (int ,int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int ds1337_set_alarm(struct device *dev, struct rtc_wkalrm *t)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct ds1307 *ds1307 = i2c_get_clientdata(client);
 unsigned char *buf = ds1307->regs;
 u8 control, status;
 int ret;

 if (!test_bit(HAS_ALARM, &ds1307->flags))
  return -EINVAL;

 dev_dbg(dev, "%s secs=%d, mins=%d, "
  "hours=%d, mday=%d, enabled=%d, pending=%d\n",
  "alarm set", t->time.tm_sec, t->time.tm_min,
  t->time.tm_hour, t->time.tm_mday,
  t->enabled, t->pending);


 ret = ds1307->read_block_data(client,
   DS1339_REG_ALARM1_SECS, 9, buf);
 if (ret != 9) {
  dev_err(dev, "%s error %d\n", "alarm write", ret);
  return -EIO;
 }
 control = ds1307->regs[7];
 status = ds1307->regs[8];

 dev_dbg(dev, "%s: %02x %02x %02x %02x, %02x %02x %02x, %02x %02x\n",
   "alarm set (old status)",
   ds1307->regs[0], ds1307->regs[1],
   ds1307->regs[2], ds1307->regs[3],
   ds1307->regs[4], ds1307->regs[5],
   ds1307->regs[6], control, status);


 buf[0] = bin2bcd(t->time.tm_sec);
 buf[1] = bin2bcd(t->time.tm_min);
 buf[2] = bin2bcd(t->time.tm_hour);
 buf[3] = bin2bcd(t->time.tm_mday);


 buf[4] = 0;
 buf[5] = 0;
 buf[6] = 0;


 buf[7] = control & ~(DS1337_BIT_A1IE | DS1337_BIT_A2IE);
 if (t->enabled) {
  dev_dbg(dev, "alarm IRQ armed\n");
  buf[7] |= DS1337_BIT_A1IE;
 }
 buf[8] = status & ~(DS1337_BIT_A1I | DS1337_BIT_A2I);

 ret = ds1307->write_block_data(client,
   DS1339_REG_ALARM1_SECS, 9, buf);
 if (ret < 0) {
  dev_err(dev, "can't set alarm time\n");
  return ret;
 }

 return 0;
}
