
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
struct gl520_data {int alarm_mask; int two_temps; scalar_t__* fan_min; int beep_mask; int vrm; } ;


 int GL520_REG_BEEP_MASK ;
 int GL520_REG_CONF ;
 int extra_sensor_type ;
 int gl520_read_value (struct i2c_client*,int ) ;
 int gl520_update_device (int *) ;
 int gl520_write_value (struct i2c_client*,int ,int) ;
 struct gl520_data* i2c_get_clientdata (struct i2c_client*) ;
 int vid_which_vrm () ;

__attribute__((used)) static void gl520_init_client(struct i2c_client *client)
{
 struct gl520_data *data = i2c_get_clientdata(client);
 u8 oldconf, conf;

 conf = oldconf = gl520_read_value(client, GL520_REG_CONF);

 data->alarm_mask = 0xff;
 data->vrm = vid_which_vrm();

 if (extra_sensor_type == 1)
  conf &= ~0x10;
 else if (extra_sensor_type == 2)
  conf |= 0x10;
 data->two_temps = !(conf & 0x10);


 if (!(conf & 0x20))
  conf &= 0xf7;


 conf |= 0x40;

 if (conf != oldconf)
  gl520_write_value(client, GL520_REG_CONF, conf);

 gl520_update_device(&(client->dev));

 if (data->fan_min[0] == 0)
  data->alarm_mask &= ~0x20;
 if (data->fan_min[1] == 0)
  data->alarm_mask &= ~0x40;

 data->beep_mask &= data->alarm_mask;
 gl520_write_value(client, GL520_REG_BEEP_MASK, data->beep_mask);
}
