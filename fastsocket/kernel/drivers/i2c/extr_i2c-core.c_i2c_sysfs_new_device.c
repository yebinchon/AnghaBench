
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int detected; } ;
struct i2c_board_info {int addr; int type; } ;
struct i2c_adapter {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EEXIST ;
 size_t EINVAL ;
 int I2C_NAME_SIZE ;
 int core_lock ;
 int dev_err (struct device*,char*,char*,...) ;
 int dev_info (struct device*,char*,char*,int ,int) ;
 int dev_warn (struct device*,char*) ;
 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,char const*,int) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sscanf (char*,char*,int*,char*) ;
 char* strchr (char const*,char) ;
 struct i2c_adapter* to_i2c_adapter (struct device*) ;
 int userspace_devices ;

__attribute__((used)) static ssize_t
i2c_sysfs_new_device(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct i2c_adapter *adap = to_i2c_adapter(dev);
 struct i2c_board_info info;
 struct i2c_client *client;
 char *blank, end;
 int res;

 dev_warn(dev, "The new_device interface is still experimental "
   "and may change in a near future\n");
 memset(&info, 0, sizeof(struct i2c_board_info));

 blank = strchr(buf, ' ');
 if (!blank) {
  dev_err(dev, "%s: Missing parameters\n", "new_device");
  return -EINVAL;
 }
 if (blank - buf > I2C_NAME_SIZE - 1) {
  dev_err(dev, "%s: Invalid device name\n", "new_device");
  return -EINVAL;
 }
 memcpy(info.type, buf, blank - buf);


 res = sscanf(++blank, "%hi%c", &info.addr, &end);
 if (res < 1) {
  dev_err(dev, "%s: Can't parse I2C address\n", "new_device");
  return -EINVAL;
 }
 if (res > 1 && end != '\n') {
  dev_err(dev, "%s: Extra parameters\n", "new_device");
  return -EINVAL;
 }

 if (info.addr < 0x03 || info.addr > 0x77) {
  dev_err(dev, "%s: Invalid I2C address 0x%hx\n", "new_device",
   info.addr);
  return -EINVAL;
 }

 client = i2c_new_device(adap, &info);
 if (!client)
  return -EEXIST;


 mutex_lock(&core_lock);
 list_add_tail(&client->detected, &userspace_devices);
 mutex_unlock(&core_lock);
 dev_info(dev, "%s: Instantiated device %s at 0x%02hx\n", "new_device",
   info.type, info.addr);

 return count;
}
