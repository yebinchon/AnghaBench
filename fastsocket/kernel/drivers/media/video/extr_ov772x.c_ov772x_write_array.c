
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regval_list {int reg_num; int value; } ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_write_byte_data (struct i2c_client*,int,int ) ;

__attribute__((used)) static int ov772x_write_array(struct i2c_client *client,
         const struct regval_list *vals)
{
 while (vals->reg_num != 0xff) {
  int ret = i2c_smbus_write_byte_data(client,
          vals->reg_num,
          vals->value);
  if (ret < 0)
   return ret;
  vals++;
 }
 return 0;
}
