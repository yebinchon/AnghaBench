
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tsl2550_data {int operating_mode; } ;
struct i2c_client {int dummy; } ;
typedef int ssize_t ;


 int TSL2550_READ_ADC0 ;
 int TSL2550_READ_ADC1 ;
 struct tsl2550_data* i2c_get_clientdata (struct i2c_client*) ;
 int sprintf (char*,char*,int) ;
 int tsl2550_calculate_lux (int,int) ;
 int tsl2550_get_adc_value (struct i2c_client*,int ) ;

__attribute__((used)) static ssize_t __tsl2550_show_lux(struct i2c_client *client, char *buf)
{
 struct tsl2550_data *data = i2c_get_clientdata(client);
 u8 ch0, ch1;
 int ret;

 ret = tsl2550_get_adc_value(client, TSL2550_READ_ADC0);
 if (ret < 0)
  return ret;
 ch0 = ret;

 ret = tsl2550_get_adc_value(client, TSL2550_READ_ADC1);
 if (ret < 0)
  return ret;
 ch1 = ret;


 ret = tsl2550_calculate_lux(ch0, ch1);
 if (ret < 0)
  return ret;
 if (data->operating_mode == 1)
  ret *= 5;

 return sprintf(buf, "%d\n", ret);
}
