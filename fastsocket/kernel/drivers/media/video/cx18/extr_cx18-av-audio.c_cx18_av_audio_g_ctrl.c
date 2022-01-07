
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct cx18 {int dummy; } ;


 int EINVAL ;





 int get_balance (struct cx18*) ;
 int get_bass (struct cx18*) ;
 int get_mute (struct cx18*) ;
 int get_treble (struct cx18*) ;
 int get_volume (struct cx18*) ;

int cx18_av_audio_g_ctrl(struct cx18 *cx, struct v4l2_control *ctrl)
{
 switch (ctrl->id) {
 case 128:
  ctrl->value = get_volume(cx);
  break;
 case 131:
  ctrl->value = get_bass(cx);
  break;
 case 129:
  ctrl->value = get_treble(cx);
  break;
 case 132:
  ctrl->value = get_balance(cx);
  break;
 case 130:
  ctrl->value = get_mute(cx);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
