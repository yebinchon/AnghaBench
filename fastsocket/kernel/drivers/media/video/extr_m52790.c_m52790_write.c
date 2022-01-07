
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct m52790_state {int input; int output; } ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;
 struct m52790_state* to_state (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int m52790_write(struct v4l2_subdev *sd)
{
 struct m52790_state *state = to_state(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 u8 sw1 = (state->input | state->output) & 0xff;
 u8 sw2 = (state->input | state->output) >> 8;

 return i2c_smbus_write_byte_data(client, sw1, sw2);
}
