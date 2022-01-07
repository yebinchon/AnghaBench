
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct i2c_client {int dev; } ;
struct file {int dummy; } ;
struct ds1307 {int (* write_block_data ) (struct i2c_client*,scalar_t__,size_t,char*) ;} ;
struct bin_attribute {int dummy; } ;
typedef size_t ssize_t ;
typedef scalar_t__ loff_t ;


 size_t EFBIG ;
 scalar_t__ NVRAM_SIZE ;
 int dev_err (int *,char*,char*,int) ;
 struct ds1307* i2c_get_clientdata (struct i2c_client*) ;
 struct i2c_client* kobj_to_i2c_client (struct kobject*) ;
 int stub1 (struct i2c_client*,scalar_t__,size_t,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t
ds1307_nvram_write(struct file *filp, struct kobject *kobj,
  struct bin_attribute *attr,
  char *buf, loff_t off, size_t count)
{
 struct i2c_client *client;
 struct ds1307 *ds1307;
 int result;

 client = kobj_to_i2c_client(kobj);
 ds1307 = i2c_get_clientdata(client);

 if (unlikely(off >= NVRAM_SIZE))
  return -EFBIG;
 if ((off + count) > NVRAM_SIZE)
  count = NVRAM_SIZE - off;
 if (unlikely(!count))
  return count;

 result = ds1307->write_block_data(client, 8 + off, count, buf);
 if (result < 0) {
  dev_err(&client->dev, "%s error %d\n", "nvram write", result);
  return result;
 }
 return count;
}
