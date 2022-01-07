
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct lm93_data {int* vccp_limits; int update_lock; TYPE_1__* block7; int * vid; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int max; } ;


 int LM93_IN_REL_TO_REG (int ,int,long) ;
 int LM93_IN_TO_REG (int,int ) ;
 int LM93_REG_IN_MAX (int) ;
 int LM93_REG_VCCP_LIMIT_OFF (int) ;
 long LM93_VID_FROM_REG (int ) ;
 struct lm93_data* i2c_get_clientdata (struct i2c_client*) ;
 int lm93_write_byte (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_2__* to_sensor_dev_attr (struct device_attribute*) ;
 scalar_t__* vccp_limit_type ;

__attribute__((used)) static ssize_t store_in_max(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 int nr = (to_sensor_dev_attr(attr))->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct lm93_data *data = i2c_get_clientdata(client);
 u32 val = simple_strtoul(buf, ((void*)0), 10);
 int vccp = nr - 6;
 long vid;

 mutex_lock(&data->update_lock);
 if ((nr==6 || nr==7) && (vccp_limit_type[vccp])) {
  vid = LM93_VID_FROM_REG(data->vid[vccp]);
  data->vccp_limits[vccp] = (data->vccp_limits[vccp] & 0x0f) |
    LM93_IN_REL_TO_REG(val, 1, vid);
  lm93_write_byte(client, LM93_REG_VCCP_LIMIT_OFF(vccp),
    data->vccp_limits[vccp]);
 }
 else {
  data->block7[nr].max = LM93_IN_TO_REG(nr,val);
  lm93_write_byte(client, LM93_REG_IN_MAX(nr),
    data->block7[nr].max);
 }
 mutex_unlock(&data->update_lock);
 return count;
}
