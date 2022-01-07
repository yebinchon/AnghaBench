
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; void* value; } ;


 int EINVAL ;
 int TVP5150_BRIGHT_CTL ;
 int TVP5150_CONTRAST_CTL ;
 int TVP5150_HUE_CTL ;
 int TVP5150_SATURATION_CTL ;




 int debug ;
 void* tvp5150_read (struct v4l2_subdev*,int ) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*) ;

__attribute__((used)) static int tvp5150_g_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 v4l2_dbg(1, debug, sd, "g_ctrl called\n");

 switch (ctrl->id) {
 case 131:
  ctrl->value = tvp5150_read(sd, TVP5150_BRIGHT_CTL);
  return 0;
 case 130:
  ctrl->value = tvp5150_read(sd, TVP5150_CONTRAST_CTL);
  return 0;
 case 128:
  ctrl->value = tvp5150_read(sd, TVP5150_SATURATION_CTL);
  return 0;
 case 129:
  ctrl->value = tvp5150_read(sd, TVP5150_HUE_CTL);
  return 0;
 }
 return -EINVAL;
}
