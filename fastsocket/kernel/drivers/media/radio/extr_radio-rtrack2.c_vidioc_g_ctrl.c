
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct rtrack2 {int muted; } ;
struct file {int dummy; } ;


 int EINVAL ;


 struct rtrack2* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctrl)
{
 struct rtrack2 *rt = video_drvdata(file);

 switch (ctrl->id) {
 case 129:
  ctrl->value = rt->muted;
  return 0;
 case 128:
  if (rt->muted)
   ctrl->value = 0;
  else
   ctrl->value = 65535;
  return 0;
 }
 return -EINVAL;
}
