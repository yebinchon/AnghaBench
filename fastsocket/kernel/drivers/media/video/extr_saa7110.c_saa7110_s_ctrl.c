
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct saa7110 {int hue; int sat; int contrast; int bright; } ;


 int EINVAL ;




 int saa7110_write (struct v4l2_subdev*,int,int ) ;
 struct saa7110* to_saa7110 (struct v4l2_subdev*) ;

__attribute__((used)) static int saa7110_s_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct saa7110 *decoder = to_saa7110(sd);

 switch (ctrl->id) {
 case 131:
  if (decoder->bright != ctrl->value) {
   decoder->bright = ctrl->value;
   saa7110_write(sd, 0x19, decoder->bright);
  }
  break;
 case 130:
  if (decoder->contrast != ctrl->value) {
   decoder->contrast = ctrl->value;
   saa7110_write(sd, 0x13, decoder->contrast);
  }
  break;
 case 128:
  if (decoder->sat != ctrl->value) {
   decoder->sat = ctrl->value;
   saa7110_write(sd, 0x12, decoder->sat);
  }
  break;
 case 129:
  if (decoder->hue != ctrl->value) {
   decoder->hue = ctrl->value;
   saa7110_write(sd, 0x07, decoder->hue);
  }
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
