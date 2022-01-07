
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct rtc_wkalrm {scalar_t__ enabled; struct rtc_time time; } ;
struct i2c_client {scalar_t__ irq; } ;
struct ds1374 {int mutex; } ;
struct device {int dummy; } ;


 int DS1374_REG_CR ;
 int DS1374_REG_CR_AIE ;
 int DS1374_REG_CR_WACE ;
 int DS1374_REG_CR_WDALM ;
 int DS1374_REG_WDALM0 ;
 int EINVAL ;
 int ds1374_read_time (struct device*,struct rtc_time*) ;
 int ds1374_write_rtc (struct i2c_client*,unsigned long,int ,int) ;
 struct ds1374* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;
 scalar_t__ time_before_eq (unsigned long,unsigned long) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int ds1374_set_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct ds1374 *ds1374 = i2c_get_clientdata(client);
 struct rtc_time now;
 unsigned long new_alarm, itime;
 int cr;
 int ret = 0;

 if (client->irq <= 0)
  return -EINVAL;

 ret = ds1374_read_time(dev, &now);
 if (ret < 0)
  return ret;

 rtc_tm_to_time(&alarm->time, &new_alarm);
 rtc_tm_to_time(&now, &itime);







 if (time_before_eq(new_alarm, itime))
  new_alarm = 1;
 else
  new_alarm -= itime;

 mutex_lock(&ds1374->mutex);

 ret = cr = i2c_smbus_read_byte_data(client, DS1374_REG_CR);
 if (ret < 0)
  goto out;



 cr &= ~DS1374_REG_CR_WACE;

 ret = i2c_smbus_write_byte_data(client, DS1374_REG_CR, cr);
 if (ret < 0)
  goto out;

 ret = ds1374_write_rtc(client, new_alarm, DS1374_REG_WDALM0, 3);
 if (ret)
  goto out;

 if (alarm->enabled) {
  cr |= DS1374_REG_CR_WACE | DS1374_REG_CR_AIE;
  cr &= ~DS1374_REG_CR_WDALM;

  ret = i2c_smbus_write_byte_data(client, DS1374_REG_CR, cr);
 }

out:
 mutex_unlock(&ds1374->mutex);
 return ret;
}
