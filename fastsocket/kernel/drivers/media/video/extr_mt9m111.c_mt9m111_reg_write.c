
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dev; } ;


 int dev_dbg (int *,char*,int const,int const,int) ;
 int i2c_smbus_write_word_data (struct i2c_client*,int const,int ) ;
 int reg_page_map_set (struct i2c_client*,int const) ;
 int swab16 (int const) ;

__attribute__((used)) static int mt9m111_reg_write(struct i2c_client *client, const u16 reg,
        const u16 data)
{
 int ret;

 ret = reg_page_map_set(client, reg);
 if (!ret)
  ret = i2c_smbus_write_word_data(client, reg & 0xff,
      swab16(data));
 dev_dbg(&client->dev, "write reg.%03x = %04x -> %d\n", reg, data, ret);
 return ret;
}
