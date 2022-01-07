
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct file {int dummy; } ;
struct cadet {int dummy; } ;


 int EINVAL ;


 int cadet_setvol (struct cadet*,int) ;
 struct cadet* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctrl)
{
 struct cadet *dev = video_drvdata(file);

 switch (ctrl->id){
 case 129:
  if (ctrl->value)
   cadet_setvol(dev, 0);
  else
   cadet_setvol(dev, 0xffff);
  break;
 case 128:
  cadet_setvol(dev, ctrl->value);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
