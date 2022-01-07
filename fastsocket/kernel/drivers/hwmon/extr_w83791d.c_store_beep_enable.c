
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83791d_data {int beep_enable; int beep_mask; int update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int GLOBAL_BEEP_ENABLE_MASK ;
 int GLOBAL_BEEP_ENABLE_SHIFT ;
 int * W83791D_REG_BEEP_CTRL ;
 struct w83791d_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 int w83791d_write (struct i2c_client*,int ,long) ;

__attribute__((used)) static ssize_t store_beep_enable(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83791d_data *data = i2c_get_clientdata(client);
 long val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);

 data->beep_enable = val ? 1 : 0;


 data->beep_mask &= ~GLOBAL_BEEP_ENABLE_MASK;
 data->beep_mask |= (data->beep_enable << GLOBAL_BEEP_ENABLE_SHIFT);



 val = (data->beep_mask >> 8) & 0xff;

 w83791d_write(client, W83791D_REG_BEEP_CTRL[1], val);

 mutex_unlock(&data->update_lock);

 return count;
}
