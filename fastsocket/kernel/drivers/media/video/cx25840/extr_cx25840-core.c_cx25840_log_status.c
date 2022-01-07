
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int name; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int hdl; } ;


 int cx25840_ir_log_status (struct v4l2_subdev*) ;
 int is_cx2583x (struct cx25840_state*) ;
 int log_audio_status (struct i2c_client*) ;
 int log_video_status (struct i2c_client*) ;
 struct cx25840_state* to_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_log_status (int *,int ) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int cx25840_log_status(struct v4l2_subdev *sd)
{
 struct cx25840_state *state = to_state(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 log_video_status(client);
 if (!is_cx2583x(state))
  log_audio_status(client);
 cx25840_ir_log_status(sd);
 v4l2_ctrl_handler_log_status(&state->hdl, sd->name);
 return 0;
}
