
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct fmi {int curvol; } ;
struct file {int dummy; } ;


 int EINVAL ;

 int fmi_mute (struct fmi*) ;
 int fmi_unmute (struct fmi*) ;
 struct fmi* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *priv,
     struct v4l2_control *ctrl)
{
 struct fmi *fmi = video_drvdata(file);

 switch (ctrl->id) {
 case 128:
  if (ctrl->value)
   fmi_mute(fmi);
  else
   fmi_unmute(fmi);
  fmi->curvol = ctrl->value;
  return 0;
 }
 return -EINVAL;
}
