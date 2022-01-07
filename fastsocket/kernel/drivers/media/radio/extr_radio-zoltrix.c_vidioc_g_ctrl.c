
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoltrix {int muted; int curvol; } ;
struct v4l2_control {int id; int value; } ;
struct file {int dummy; } ;


 int EINVAL ;


 struct zoltrix* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctrl)
{
 struct zoltrix *zol = video_drvdata(file);

 switch (ctrl->id) {
 case 129:
  ctrl->value = zol->muted;
  return 0;
 case 128:
  ctrl->value = zol->curvol * 4096;
  return 0;
 }
 return -EINVAL;
}
