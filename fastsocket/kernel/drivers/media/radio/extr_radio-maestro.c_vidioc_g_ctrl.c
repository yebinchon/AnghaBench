
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct maestro {int muted; } ;
struct file {int dummy; } ;


 int EINVAL ;

 struct maestro* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_ctrl(struct file *file, void *priv,
     struct v4l2_control *ctrl)
{
 struct maestro *dev = video_drvdata(file);

 switch (ctrl->id) {
 case 128:
  ctrl->value = dev->muted;
  return 0;
 }
 return -EINVAL;
}
