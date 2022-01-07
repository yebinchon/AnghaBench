
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct typhoon {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;


 int typhoon_mute (struct typhoon*) ;
 int typhoon_setvol (struct typhoon*,int ) ;
 int typhoon_unmute (struct typhoon*) ;
 struct typhoon* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_ctrl (struct file *file, void *priv,
     struct v4l2_control *ctrl)
{
 struct typhoon *dev = video_drvdata(file);

 switch (ctrl->id) {
 case 129:
  if (ctrl->value)
   typhoon_mute(dev);
  else
   typhoon_unmute(dev);
  return 0;
 case 128:
  typhoon_setvol(dev, ctrl->value);
  return 0;
 }
 return -EINVAL;
}
