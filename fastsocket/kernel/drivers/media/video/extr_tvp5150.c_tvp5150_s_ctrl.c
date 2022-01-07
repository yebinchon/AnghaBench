
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_control {scalar_t__ id; scalar_t__ value; } ;
struct TYPE_3__ {scalar_t__ id; scalar_t__ minimum; scalar_t__ maximum; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int ERANGE ;
 int TVP5150_BRIGHT_CTL ;
 int TVP5150_CONTRAST_CTL ;
 int TVP5150_HUE_CTL ;
 int TVP5150_SATURATION_CTL ;




 int debug ;
 TYPE_1__* tvp5150_qctrl ;
 int tvp5150_write (struct v4l2_subdev*,int ,scalar_t__) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int tvp5150_s_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 u8 i, n;
 n = ARRAY_SIZE(tvp5150_qctrl);

 for (i = 0; i < n; i++) {
  if (ctrl->id != tvp5150_qctrl[i].id)
   continue;
  if (ctrl->value < tvp5150_qctrl[i].minimum ||
      ctrl->value > tvp5150_qctrl[i].maximum)
   return -ERANGE;
  v4l2_dbg(1, debug, sd, "s_ctrl: id=%d, value=%d\n",
     ctrl->id, ctrl->value);
  break;
 }

 switch (ctrl->id) {
 case 131:
  tvp5150_write(sd, TVP5150_BRIGHT_CTL, ctrl->value);
  return 0;
 case 130:
  tvp5150_write(sd, TVP5150_CONTRAST_CTL, ctrl->value);
  return 0;
 case 128:
  tvp5150_write(sd, TVP5150_SATURATION_CTL, ctrl->value);
  return 0;
 case 129:
  tvp5150_write(sd, TVP5150_HUE_CTL, ctrl->value);
  return 0;
 }
 return -EINVAL;
}
