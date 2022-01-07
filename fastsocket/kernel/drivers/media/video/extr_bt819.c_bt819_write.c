
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct i2c_client {int dummy; } ;
struct bt819 {size_t* reg; int sd; } ;


 int i2c_smbus_write_byte_data (struct i2c_client*,size_t,size_t) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static inline int bt819_write(struct bt819 *decoder, u8 reg, u8 value)
{
 struct i2c_client *client = v4l2_get_subdevdata(&decoder->sd);

 decoder->reg[reg] = value;
 return i2c_smbus_write_byte_data(client, reg, value);
}
