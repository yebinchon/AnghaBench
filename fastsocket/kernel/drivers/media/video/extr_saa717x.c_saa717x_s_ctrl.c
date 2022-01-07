
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;
struct saa717x_state {int audio_main_bass; int audio_main_treble; int audio_main_balance; int audio_main_volume; int audio_main_mute; } ;
 int saa717x_write (struct v4l2_subdev*,int,int ) ;
 int set_audio_regs (struct v4l2_subdev*,struct saa717x_state*) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;
 struct saa717x_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int saa717x_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);
 struct saa717x_state *state = to_state(sd);

 switch (ctrl->id) {
 case 131:
  saa717x_write(sd, 0x10a, ctrl->val);
  return 0;

 case 130:
  saa717x_write(sd, 0x10b, ctrl->val);
  return 0;

 case 128:
  saa717x_write(sd, 0x10c, ctrl->val);
  return 0;

 case 129:
  saa717x_write(sd, 0x10d, ctrl->val);
  return 0;

 case 134:
  state->audio_main_mute = ctrl->val;
  break;

 case 132:
  state->audio_main_volume = ctrl->val;
  break;

 case 136:
  state->audio_main_balance = ctrl->val;
  break;

 case 133:
  state->audio_main_treble = ctrl->val;
  break;

 case 135:
  state->audio_main_bass = ctrl->val;
  break;

 default:
  return 0;
 }
 set_audio_regs(sd, state);
 return 0;
}
