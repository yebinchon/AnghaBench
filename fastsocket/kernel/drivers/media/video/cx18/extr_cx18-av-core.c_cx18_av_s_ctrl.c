
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct cx18 {int dummy; } ;


 int CX18_ERR_DEV (struct v4l2_subdev*,char*,int) ;
 int EINVAL ;
 int ERANGE ;
 int cx18_av_audio_s_ctrl (struct cx18*,struct v4l2_control*) ;
 int cx18_av_write (struct cx18*,int,int) ;
 struct cx18* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int cx18_av_s_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct cx18 *cx = v4l2_get_subdevdata(sd);

 switch (ctrl->id) {
 case 131:
  if (ctrl->value < 0 || ctrl->value > 255) {
   CX18_ERR_DEV(sd, "invalid brightness setting %d\n",
         ctrl->value);
   return -ERANGE;
  }

  cx18_av_write(cx, 0x414, ctrl->value - 128);
  break;

 case 130:
  if (ctrl->value < 0 || ctrl->value > 127) {
   CX18_ERR_DEV(sd, "invalid contrast setting %d\n",
         ctrl->value);
   return -ERANGE;
  }

  cx18_av_write(cx, 0x415, ctrl->value << 1);
  break;

 case 128:
  if (ctrl->value < 0 || ctrl->value > 127) {
   CX18_ERR_DEV(sd, "invalid saturation setting %d\n",
         ctrl->value);
   return -ERANGE;
  }

  cx18_av_write(cx, 0x420, ctrl->value << 1);
  cx18_av_write(cx, 0x421, ctrl->value << 1);
  break;

 case 129:
  if (ctrl->value < -128 || ctrl->value > 127) {
   CX18_ERR_DEV(sd, "invalid hue setting %d\n",
         ctrl->value);
   return -ERANGE;
  }

  cx18_av_write(cx, 0x422, ctrl->value);
  break;

 case 132:
 case 135:
 case 133:
 case 136:
 case 134:
  return cx18_av_audio_s_ctrl(cx, ctrl);

 default:
  return -EINVAL;
 }
 return 0;
}
