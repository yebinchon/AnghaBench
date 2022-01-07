
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct msp_state {int i2s_mode; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int msp_debug ;
 struct msp_state* to_state (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l_dbg (int,int ,struct i2c_client*,char*,int ) ;

__attribute__((used)) static int msp_s_i2s_clock_freq(struct v4l2_subdev *sd, u32 freq)
{
 struct msp_state *state = to_state(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 v4l_dbg(1, msp_debug, client, "Setting I2S speed to %d\n", freq);

 switch (freq) {
  case 1024000:
   state->i2s_mode = 0;
   break;
  case 2048000:
   state->i2s_mode = 1;
   break;
  default:
   return -EINVAL;
 }
 return 0;
}
