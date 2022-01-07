
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct fmr2 {int curvol; int mute; } ;
struct file {int dummy; } ;


 int EINVAL ;


 struct fmr2* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_ctrl(struct file *file, void *priv,
     struct v4l2_control *ctrl)
{
 struct fmr2 *fmr2 = video_drvdata(file);

 switch (ctrl->id) {
 case 129:
  ctrl->value = fmr2->mute;
  return 0;
 case 128:
  ctrl->value = fmr2->curvol;
  return 0;
 }
 return -EINVAL;
}
