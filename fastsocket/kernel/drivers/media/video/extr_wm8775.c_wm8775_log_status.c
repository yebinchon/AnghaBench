
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8775_state {int hdl; int input; } ;
struct v4l2_subdev {int name; } ;


 struct wm8775_state* to_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_log_status (int *,int ) ;
 int v4l2_info (struct v4l2_subdev*,char*,int ) ;

__attribute__((used)) static int wm8775_log_status(struct v4l2_subdev *sd)
{
 struct wm8775_state *state = to_state(sd);

 v4l2_info(sd, "Input: %d\n", state->input);
 v4l2_ctrl_handler_log_status(&state->hdl, sd->name);
 return 0;
}
