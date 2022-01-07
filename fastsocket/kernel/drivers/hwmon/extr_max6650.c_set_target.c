
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max6650_data {int speed; int update_lock; int config; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int DIV_FROM_REG (int ) ;
 int FAN_RPM_MAX ;
 int FAN_RPM_MIN ;
 int MAX6650_REG_SPEED ;
 int SENSORS_LIMIT (int,int ,int ) ;
 int clock ;
 struct max6650_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_target(struct device *dev, struct device_attribute *devattr,
    const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct max6650_data *data = i2c_get_clientdata(client);
 int rpm = simple_strtoul(buf, ((void*)0), 10);
 int kscale, ktach;

 rpm = SENSORS_LIMIT(rpm, FAN_RPM_MIN, FAN_RPM_MAX);
 mutex_lock(&data->update_lock);

 kscale = DIV_FROM_REG(data->config);
 ktach = ((clock * kscale) / (256 * rpm / 60)) - 1;
 if (ktach < 0)
  ktach = 0;
 if (ktach > 255)
  ktach = 255;
 data->speed = ktach;

 i2c_smbus_write_byte_data(client, MAX6650_REG_SPEED, data->speed);

 mutex_unlock(&data->update_lock);

 return count;
}
