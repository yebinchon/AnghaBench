
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wm8775_state {int input; int mute; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int R14 ;
 int R15 ;
 int R21 ;
 struct wm8775_state* to_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_g_ctrl (int ) ;
 int v4l2_err (struct v4l2_subdev*,char*,int) ;
 int wm8775_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static int wm8775_s_routing(struct v4l2_subdev *sd,
       u32 input, u32 output, u32 config)
{
 struct wm8775_state *state = to_state(sd);






 if (input > 15) {
  v4l2_err(sd, "Invalid input %d.\n", input);
  return -EINVAL;
 }
 state->input = input;
 if (!v4l2_ctrl_g_ctrl(state->mute))
  return 0;
 wm8775_write(sd, R21, 0x0c0);
 wm8775_write(sd, R14, 0x1d4);
 wm8775_write(sd, R15, 0x1d4);
 wm8775_write(sd, R21, 0x100 + state->input);
 return 0;
}
