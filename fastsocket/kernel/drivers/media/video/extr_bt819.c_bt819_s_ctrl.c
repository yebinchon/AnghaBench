
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct bt819 {int bright; int contrast; int sat; int hue; } ;


 int EINVAL ;




 int bt819_setbit (struct bt819*,int,int,int) ;
 int bt819_write (struct bt819*,int,int) ;
 struct bt819* to_bt819 (struct v4l2_subdev*) ;

__attribute__((used)) static int bt819_s_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct bt819 *decoder = to_bt819(sd);
 int temp;

 switch (ctrl->id) {
 case 131:
  if (decoder->bright == ctrl->value)
   break;
  decoder->bright = ctrl->value;
  bt819_write(decoder, 0x0a, decoder->bright);
  break;

 case 130:
  if (decoder->contrast == ctrl->value)
   break;
  decoder->contrast = ctrl->value;
  bt819_write(decoder, 0x0c, decoder->contrast & 0xff);
  bt819_setbit(decoder, 0x0b, 2, ((decoder->contrast >> 8) & 0x01));
  break;

 case 128:
  if (decoder->sat == ctrl->value)
   break;
  decoder->sat = ctrl->value;
  bt819_write(decoder, 0x0d, (decoder->sat >> 7) & 0xff);
  bt819_setbit(decoder, 0x0b, 1, ((decoder->sat >> 15) & 0x01));



  temp = (decoder->sat * 180) / 254;
  bt819_write(decoder, 0x0e, (temp >> 7) & 0xff);
  bt819_setbit(decoder, 0x0b, 0, (temp >> 15) & 0x01);
  break;

 case 129:
  if (decoder->hue == ctrl->value)
   break;
  decoder->hue = ctrl->value;
  bt819_write(decoder, 0x0f, decoder->hue);
  break;

 default:
  return -EINVAL;
 }
 return 0;
}
