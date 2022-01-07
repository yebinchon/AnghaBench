
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_vbi_format {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int std; } ;


 int V4L2_STD_525_60 ;
 int cx25840_std_setup (struct i2c_client*) ;
 int cx25840_write (struct i2c_client*,int,int) ;
 struct cx25840_state* to_state (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

int cx25840_s_raw_fmt(struct v4l2_subdev *sd, struct v4l2_vbi_format *fmt)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct cx25840_state *state = to_state(sd);
 int is_pal = !(state->std & V4L2_STD_525_60);
 int vbi_offset = is_pal ? 1 : 0;


 cx25840_std_setup(client);


 cx25840_write(client, 0x47f, vbi_offset);
 cx25840_write(client, 0x404, 0x2e);
 return 0;
}
