
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_control {int id; int value; } ;
struct file {int dummy; } ;
struct dsbr100_device {TYPE_1__* usbdev; scalar_t__ removed; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int EINVAL ;
 int EIO ;

 int dev_warn (int *,char*) ;
 int dsbr100_start (struct dsbr100_device*) ;
 int dsbr100_stop (struct dsbr100_device*) ;
 struct dsbr100_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctrl)
{
 struct dsbr100_device *radio = video_drvdata(file);
 int retval;


 if (radio->removed)
  return -EIO;

 switch (ctrl->id) {
 case 128:
  if (ctrl->value) {
   retval = dsbr100_stop(radio);
   if (retval < 0) {
    dev_warn(&radio->usbdev->dev,
      "Radio did not respond properly\n");
    return -EBUSY;
   }
  } else {
   retval = dsbr100_start(radio);
   if (retval < 0) {
    dev_warn(&radio->usbdev->dev,
      "Radio did not respond properly\n");
    return -EBUSY;
   }
  }
  return 0;
 }
 return -EINVAL;
}
