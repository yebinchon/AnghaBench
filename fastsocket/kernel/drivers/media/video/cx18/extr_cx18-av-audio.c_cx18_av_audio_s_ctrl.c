
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct cx18 {int dummy; } ;


 int EINVAL ;





 int set_balance (struct cx18*,int ) ;
 int set_bass (struct cx18*,int ) ;
 int set_mute (struct cx18*,int ) ;
 int set_treble (struct cx18*,int ) ;
 int set_volume (struct cx18*,int ) ;

int cx18_av_audio_s_ctrl(struct cx18 *cx, struct v4l2_control *ctrl)
{
 switch (ctrl->id) {
 case 128:
  set_volume(cx, ctrl->value);
  break;
 case 131:
  set_bass(cx, ctrl->value);
  break;
 case 129:
  set_treble(cx, ctrl->value);
  break;
 case 132:
  set_balance(cx, ctrl->value);
  break;
 case 130:
  set_mute(cx, ctrl->value);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
