
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int aud_input; int vid_input; int pvr150_workaround; } ;
struct cx25840_platform_data {int pvr150_workaround; } ;


 int set_input (struct i2c_client*,int ,int ) ;
 struct cx25840_state* to_state (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int cx25840_s_config(struct v4l2_subdev *sd, int irq, void *platform_data)
{
 struct cx25840_state *state = to_state(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 if (platform_data) {
  struct cx25840_platform_data *pdata = platform_data;

  state->pvr150_workaround = pdata->pvr150_workaround;
  set_input(client, state->vid_input, state->aud_input);
 }
 return 0;
}
