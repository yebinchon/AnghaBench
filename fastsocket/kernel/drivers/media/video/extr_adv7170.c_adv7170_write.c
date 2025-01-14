
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct adv7170 {size_t* reg; } ;


 int i2c_smbus_write_byte_data (struct i2c_client*,size_t,size_t) ;
 struct adv7170* to_adv7170 (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static inline int adv7170_write(struct v4l2_subdev *sd, u8 reg, u8 value)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct adv7170 *encoder = to_adv7170(sd);

 encoder->reg[reg] = value;
 return i2c_smbus_write_byte_data(client, reg, value);
}
