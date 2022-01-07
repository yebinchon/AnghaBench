
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct file {int dummy; } ;
struct amradio_device {int muted; scalar_t__ removed; } ;


 int EINVAL ;
 int EIO ;

 int video_devdata (struct file*) ;
 struct amradio_device* video_get_drvdata (int ) ;

__attribute__((used)) static int vidioc_g_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctrl)
{
 struct amradio_device *radio = video_get_drvdata(video_devdata(file));


 if (radio->removed)
  return -EIO;

 switch (ctrl->id) {
 case 128:
  ctrl->value = radio->muted;
  return 0;
 }
 return -EINVAL;
}
