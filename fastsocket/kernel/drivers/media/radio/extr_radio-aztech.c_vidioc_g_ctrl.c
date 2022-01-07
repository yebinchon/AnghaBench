
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct file {int dummy; } ;
struct aztech {int curvol; } ;


 int EINVAL ;


 struct aztech* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_ctrl(struct file *file, void *priv,
       struct v4l2_control *ctrl)
{
 struct aztech *az = video_drvdata(file);

 switch (ctrl->id) {
 case 129:
  if (az->curvol == 0)
   ctrl->value = 1;
  else
   ctrl->value = 0;
  return 0;
 case 128:
  ctrl->value = az->curvol * 6554;
  return 0;
 }
 return -EINVAL;
}
