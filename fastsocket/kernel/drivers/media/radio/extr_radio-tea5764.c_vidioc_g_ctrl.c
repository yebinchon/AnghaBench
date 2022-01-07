
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct tea5764_device {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;

 int tea5764_i2c_read (struct tea5764_device*) ;
 int tea5764_is_muted (struct tea5764_device*) ;
 struct tea5764_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_ctrl(struct file *file, void *priv,
       struct v4l2_control *ctrl)
{
 struct tea5764_device *radio = video_drvdata(file);

 switch (ctrl->id) {
 case 128:
  tea5764_i2c_read(radio);
  ctrl->value = tea5764_is_muted(radio) ? 1 : 0;
  return 0;
 }
 return -EINVAL;
}
