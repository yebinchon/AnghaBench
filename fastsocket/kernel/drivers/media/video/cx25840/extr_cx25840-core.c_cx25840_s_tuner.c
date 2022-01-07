
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int audmode; } ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int audmode; scalar_t__ radio; } ;


 int EINVAL ;





 int cx25840_and_or (struct i2c_client*,int,int,int) ;
 scalar_t__ is_cx2583x (struct cx25840_state*) ;
 struct cx25840_state* to_state (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int cx25840_s_tuner(struct v4l2_subdev *sd, struct v4l2_tuner *vt)
{
 struct cx25840_state *state = to_state(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 if (state->radio || is_cx2583x(state))
  return 0;

 switch (vt->audmode) {
  case 129:



   cx25840_and_or(client, 0x809, ~0xf, 0x00);
   break;
  case 128:
  case 132:



   cx25840_and_or(client, 0x809, ~0xf, 0x04);
   break;
  case 131:



   cx25840_and_or(client, 0x809, ~0xf, 0x07);
   break;
  case 130:



   cx25840_and_or(client, 0x809, ~0xf, 0x01);
   break;
  default:
   return -EINVAL;
 }
 state->audmode = vt->audmode;
 return 0;
}
