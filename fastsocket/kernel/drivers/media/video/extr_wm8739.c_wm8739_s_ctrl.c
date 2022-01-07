
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wm8739_state {TYPE_3__* mute; TYPE_2__* volume; TYPE_1__* balance; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; } ;
struct TYPE_6__ {scalar_t__ val; } ;
struct TYPE_5__ {int val; } ;
struct TYPE_4__ {scalar_t__ val; } ;


 int EINVAL ;
 int R0 ;
 int R1 ;

 int min (scalar_t__,int) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;
 struct wm8739_state* to_state (struct v4l2_subdev*) ;
 int wm8739_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static int wm8739_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);
 struct wm8739_state *state = to_state(sd);
 unsigned int work_l, work_r;
 u8 vol_l;
 u8 vol_r;
 u16 mute;

 switch (ctrl->id) {
 case 128:
  break;

 default:
  return -EINVAL;
 }


 work_l = (min(65536 - state->balance->val, 32768) * state->volume->val) / 32768;
 work_r = (min(state->balance->val, 32768) * state->volume->val) / 32768;

 vol_l = (long)work_l * 31 / 65535;
 vol_r = (long)work_r * 31 / 65535;


 mute = state->mute->val ? 0x80 : 0;




 wm8739_write(sd, R0, (vol_l & 0x1f) | mute);
 wm8739_write(sd, R1, (vol_r & 0x1f) | mute);
 return 0;
}
