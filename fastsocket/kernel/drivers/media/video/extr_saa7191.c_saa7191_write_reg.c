
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {size_t* reg; } ;


 int i2c_smbus_write_byte_data (struct i2c_client*,size_t,size_t) ;
 TYPE_1__* to_saa7191 (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int saa7191_write_reg(struct v4l2_subdev *sd, u8 reg, u8 value)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 to_saa7191(sd)->reg[reg] = value;
 return i2c_smbus_write_byte_data(client, reg, value);
}
