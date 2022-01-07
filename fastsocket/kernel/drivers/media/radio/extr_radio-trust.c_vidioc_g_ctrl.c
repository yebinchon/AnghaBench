
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct trust {int curmute; int curvol; int curbass; int curtreble; } ;
struct file {int dummy; } ;


 int EINVAL ;




 struct trust* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctrl)
{
 struct trust *tr = video_drvdata(file);

 switch (ctrl->id) {
 case 130:
  ctrl->value = tr->curmute;
  return 0;
 case 128:
  ctrl->value = tr->curvol * 2048;
  return 0;
 case 131:
  ctrl->value = tr->curbass * 4370;
  return 0;
 case 129:
  ctrl->value = tr->curtreble * 4370;
  return 0;
 }
 return -EINVAL;
}
