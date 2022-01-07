
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct cx18 {int dummy; } ;
typedef int s8 ;


 int EINVAL ;
 int cx18_av_audio_g_ctrl (struct cx18*,struct v4l2_control*) ;
 int cx18_av_read (struct cx18*,int) ;
 struct cx18* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int cx18_av_g_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct cx18 *cx = v4l2_get_subdevdata(sd);

 switch (ctrl->id) {
 case 131:
  ctrl->value = (s8)cx18_av_read(cx, 0x414) + 128;
  break;
 case 130:
  ctrl->value = cx18_av_read(cx, 0x415) >> 1;
  break;
 case 128:
  ctrl->value = cx18_av_read(cx, 0x420) >> 1;
  break;
 case 129:
  ctrl->value = (s8)cx18_av_read(cx, 0x422);
  break;
 case 132:
 case 135:
 case 133:
 case 136:
 case 134:
  return cx18_av_audio_g_ctrl(cx, ctrl);
 default:
  return -EINVAL;
 }
 return 0;
}
