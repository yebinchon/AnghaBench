
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct ad7418_data {int valid; int adc_max; int lock; scalar_t__ last_updated; void** in; void** temp; } ;


 int AD7418_CH_TEMP ;
 int AD7418_REG_ADC ;
 int AD7418_REG_ADC_CH (int) ;
 int AD7418_REG_CONF ;
 int * AD7418_REG_TEMP ;
 int HZ ;
 void* ad7418_read (struct i2c_client*,int ) ;
 int ad7418_write (struct i2c_client*,int ,int) ;
 struct ad7418_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 int udelay (int) ;

__attribute__((used)) static struct ad7418_data *ad7418_update_device(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct ad7418_data *data = i2c_get_clientdata(client);

 mutex_lock(&data->lock);

 if (time_after(jiffies, data->last_updated + HZ + HZ / 2)
  || !data->valid) {
  u8 cfg;
  int i, ch;


  cfg = i2c_smbus_read_byte_data(client, AD7418_REG_CONF);
  cfg &= 0x1F;

  i2c_smbus_write_byte_data(client, AD7418_REG_CONF,
      cfg | AD7418_CH_TEMP);
  udelay(30);

  for (i = 0; i < 3; i++) {
   data->temp[i] = ad7418_read(client, AD7418_REG_TEMP[i]);
  }

  for (i = 0, ch = 4; i < data->adc_max; i++, ch--) {
   i2c_smbus_write_byte_data(client,
     AD7418_REG_CONF,
     cfg | AD7418_REG_ADC_CH(ch));

   udelay(15);
   data->in[data->adc_max - 1 - i] =
    ad7418_read(client, AD7418_REG_ADC);
  }


  ad7418_write(client, AD7418_REG_CONF, cfg);

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->lock);

 return data;
}
