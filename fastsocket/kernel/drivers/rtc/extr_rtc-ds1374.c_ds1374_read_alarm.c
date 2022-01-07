
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rtc_wkalrm {int enabled; int pending; int time; } ;
struct i2c_client {scalar_t__ irq; } ;
struct ds1374 {int mutex; } ;
struct device {int dummy; } ;


 int DS1374_REG_CR ;
 int DS1374_REG_CR_WACE ;
 int DS1374_REG_SR ;
 int DS1374_REG_SR_AF ;
 int DS1374_REG_TOD0 ;
 int DS1374_REG_WDALM0 ;
 int EINVAL ;
 int ds1374_read_rtc (struct i2c_client*,scalar_t__*,int ,int) ;
 struct ds1374* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtc_time_to_tm (scalar_t__,int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int ds1374_read_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct ds1374 *ds1374 = i2c_get_clientdata(client);
 u32 now, cur_alarm;
 int cr, sr;
 int ret = 0;

 if (client->irq <= 0)
  return -EINVAL;

 mutex_lock(&ds1374->mutex);

 cr = ret = i2c_smbus_read_byte_data(client, DS1374_REG_CR);
 if (ret < 0)
  goto out;

 sr = ret = i2c_smbus_read_byte_data(client, DS1374_REG_SR);
 if (ret < 0)
  goto out;

 ret = ds1374_read_rtc(client, &now, DS1374_REG_TOD0, 4);
 if (ret)
  goto out;

 ret = ds1374_read_rtc(client, &cur_alarm, DS1374_REG_WDALM0, 3);
 if (ret)
  goto out;

 rtc_time_to_tm(now + cur_alarm, &alarm->time);
 alarm->enabled = !!(cr & DS1374_REG_CR_WACE);
 alarm->pending = !!(sr & DS1374_REG_SR_AF);

out:
 mutex_unlock(&ds1374->mutex);
 return ret;
}
