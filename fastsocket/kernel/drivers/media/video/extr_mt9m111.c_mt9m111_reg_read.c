
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dev; } ;


 int dev_dbg (int *,char*,int const,int) ;
 int i2c_smbus_read_word_data (struct i2c_client*,int const) ;
 int reg_page_map_set (struct i2c_client*,int const) ;
 int swab16 (int ) ;

__attribute__((used)) static int mt9m111_reg_read(struct i2c_client *client, const u16 reg)
{
 int ret;

 ret = reg_page_map_set(client, reg);
 if (!ret)
  ret = swab16(i2c_smbus_read_word_data(client, reg & 0xff));

 dev_dbg(&client->dev, "read  reg.%03x -> %04x\n", reg, ret);
 return ret;
}
