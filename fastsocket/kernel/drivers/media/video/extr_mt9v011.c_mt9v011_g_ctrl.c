
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct mt9v011 {int global_gain; int red_bal; int blue_bal; int vflip; int hflip; } ;


 int EINVAL ;





 int debug ;
 struct mt9v011* to_mt9v011 (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*) ;

__attribute__((used)) static int mt9v011_g_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct mt9v011 *core = to_mt9v011(sd);

 v4l2_dbg(1, debug, sd, "g_ctrl called\n");

 switch (ctrl->id) {
 case 131:
  ctrl->value = core->global_gain;
  return 0;
 case 129:
  ctrl->value = core->red_bal;
  return 0;
 case 132:
  ctrl->value = core->blue_bal;
  return 0;
 case 130:
  ctrl->value = core->hflip ? 1 : 0;
  return 0;
 case 128:
  ctrl->value = core->vflip ? 1 : 0;
  return 0;
 }
 return -EINVAL;
}
