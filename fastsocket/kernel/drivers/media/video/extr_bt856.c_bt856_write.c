
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct i2c_client {int dummy; } ;
struct bt856 {size_t* reg; int sd; } ;


 size_t BT856_REG_OFFSET ;
 int i2c_smbus_write_byte_data (struct i2c_client*,size_t,size_t) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static inline int bt856_write(struct bt856 *encoder, u8 reg, u8 value)
{
 struct i2c_client *client = v4l2_get_subdevdata(&encoder->sd);

 encoder->reg[reg - BT856_REG_OFFSET] = value;
 return i2c_smbus_write_byte_data(client, reg, value);
}
