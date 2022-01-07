
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct file {int dummy; } ;
struct aztech {int curvol; } ;


 int EINVAL ;


 int az_setvol (struct aztech*,int ) ;
 struct aztech* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *priv,
       struct v4l2_control *ctrl)
{
 struct aztech *az = video_drvdata(file);

 switch (ctrl->id) {
 case 129:
  if (ctrl->value)
   az_setvol(az, 0);
  else
   az_setvol(az, az->curvol);
  return 0;
 case 128:
  az_setvol(az, ctrl->value);
  return 0;
 }
 return -EINVAL;
}
