
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct rtrack {int curvol; } ;
struct file {int dummy; } ;


 int EINVAL ;


 int rt_mute (struct rtrack*) ;
 int rt_setvol (struct rtrack*,int ) ;
 struct rtrack* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *priv,
     struct v4l2_control *ctrl)
{
 struct rtrack *rt = video_drvdata(file);

 switch (ctrl->id) {
 case 129:
  if (ctrl->value)
   rt_mute(rt);
  else
   rt_setvol(rt, rt->curvol);
  return 0;
 case 128:
  rt_setvol(rt, ctrl->value);
  return 0;
 }
 return -EINVAL;
}
