
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct file {int dummy; } ;
struct dsbr100_device {int status; scalar_t__ removed; } ;


 int EINVAL ;
 int EIO ;

 struct dsbr100_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctrl)
{
 struct dsbr100_device *radio = video_drvdata(file);


 if (radio->removed)
  return -EIO;

 switch (ctrl->id) {
 case 128:
  ctrl->value = radio->status;
  return 0;
 }
 return -EINVAL;
}
