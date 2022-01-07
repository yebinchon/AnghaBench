
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute {size_t index; } ;
struct i2c_client {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1029_data {int update_lock; } ;
typedef size_t ssize_t ;


 int * ADM1029_REG_FAN_DIV ;
 size_t EINVAL ;
 int dev_err (int *,char*,long) ;
 struct adm1029_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_fan_div(struct device *dev,
     struct device_attribute *devattr, const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct adm1029_data *data = i2c_get_clientdata(client);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 long val = simple_strtol(buf, ((void*)0), 10);
 u8 reg;

 mutex_lock(&data->update_lock);


 reg = i2c_smbus_read_byte_data(client,
           ADM1029_REG_FAN_DIV[attr->index]);

 switch (val) {
 case 1:
  val = 1;
  break;
 case 2:
  val = 2;
  break;
 case 4:
  val = 3;
  break;
 default:
  mutex_unlock(&data->update_lock);
  dev_err(&client->dev, "fan_div value %ld not "
   "supported. Choose one of 1, 2 or 4!\n", val);
  return -EINVAL;
 }

 reg = (reg & 0x3F) | (val << 6);


 i2c_smbus_write_byte_data(client,
      ADM1029_REG_FAN_DIV[attr->index], reg);
 mutex_unlock(&data->update_lock);

 return count;
}
