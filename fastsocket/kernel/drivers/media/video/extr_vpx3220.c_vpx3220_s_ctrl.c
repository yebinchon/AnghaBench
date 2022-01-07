
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpx3220 {int hue; int sat; int contrast; int bright; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;


 int EINVAL ;




 struct vpx3220* to_vpx3220 (struct v4l2_subdev*) ;
 int vpx3220_fp_write (struct v4l2_subdev*,int,int ) ;
 int vpx3220_write (struct v4l2_subdev*,int,int ) ;

__attribute__((used)) static int vpx3220_s_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct vpx3220 *decoder = to_vpx3220(sd);

 switch (ctrl->id) {
 case 131:
  if (decoder->bright != ctrl->value) {
   decoder->bright = ctrl->value;
   vpx3220_write(sd, 0xe6, decoder->bright);
  }
  break;
 case 130:
  if (decoder->contrast != ctrl->value) {

   decoder->contrast = ctrl->value;
   vpx3220_write(sd, 0xe7, decoder->contrast + 192);
  }
  break;
 case 128:
  if (decoder->sat != ctrl->value) {
   decoder->sat = ctrl->value;
   vpx3220_fp_write(sd, 0xa0, decoder->sat);
  }
  break;
 case 129:
  if (decoder->hue != ctrl->value) {
   decoder->hue = ctrl->value;
   vpx3220_fp_write(sd, 0x1c, decoder->hue);
  }
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
