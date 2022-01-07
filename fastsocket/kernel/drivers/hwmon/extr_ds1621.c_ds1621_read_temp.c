
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_read_word_data (struct i2c_client*,int ) ;
 int swab16 (int) ;

__attribute__((used)) static int ds1621_read_temp(struct i2c_client *client, u8 reg)
{
 int ret;

 ret = i2c_smbus_read_word_data(client, reg);
 if (ret < 0)
  return ret;
 return swab16(ret);
}
