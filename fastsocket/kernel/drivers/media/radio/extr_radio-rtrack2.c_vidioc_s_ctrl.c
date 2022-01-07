
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct rtrack2 {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;


 int rt_mute (struct rtrack2*) ;
 int rt_unmute (struct rtrack2*) ;
 struct rtrack2* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctrl)
{
 struct rtrack2 *rt = video_drvdata(file);

 switch (ctrl->id) {
 case 129:
  if (ctrl->value)
   rt_mute(rt);
  else
   rt_unmute(rt);
  return 0;
 case 128:
  if (ctrl->value)
   rt_unmute(rt);
  else
   rt_mute(rt);
  return 0;
 }
 return -EINVAL;
}
