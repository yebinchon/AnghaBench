
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct gemtek {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;

 int gemtek_mute (struct gemtek*) ;
 int gemtek_unmute (struct gemtek*) ;
 struct gemtek* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctrl)
{
 struct gemtek *gt = video_drvdata(file);

 switch (ctrl->id) {
 case 128:
  if (ctrl->value)
   gemtek_mute(gt);
  else
   gemtek_unmute(gt);
  return 0;
 }
 return -EINVAL;
}
