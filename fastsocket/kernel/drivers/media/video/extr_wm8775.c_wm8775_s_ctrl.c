
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8775_state {int input; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;


 int EINVAL ;
 int R14 ;
 int R15 ;
 int R21 ;

 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;
 struct wm8775_state* to_state (struct v4l2_subdev*) ;
 int wm8775_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static int wm8775_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);
 struct wm8775_state *state = to_state(sd);

 switch (ctrl->id) {
 case 128:
  wm8775_write(sd, R21, 0x0c0);
  wm8775_write(sd, R14, 0x1d4);
  wm8775_write(sd, R15, 0x1d4);
  if (!ctrl->val)
   wm8775_write(sd, R21, 0x100 + state->input);
  return 0;
 }
 return -EINVAL;
}
