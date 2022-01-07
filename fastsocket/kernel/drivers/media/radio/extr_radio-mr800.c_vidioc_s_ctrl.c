
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_control {int id; int value; } ;
struct file {int dummy; } ;
struct amradio_device {TYPE_1__* videodev; scalar_t__ removed; } ;
struct TYPE_2__ {int dev; } ;


 int AMRADIO_START ;
 int AMRADIO_STOP ;
 int EINVAL ;
 int EIO ;

 int amradio_dev_warn (int *,char*) ;
 int amradio_set_mute (struct amradio_device*,int ) ;
 int video_devdata (struct file*) ;
 struct amradio_device* video_get_drvdata (int ) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctrl)
{
 struct amradio_device *radio = video_get_drvdata(video_devdata(file));
 int retval;


 if (radio->removed)
  return -EIO;

 switch (ctrl->id) {
 case 128:
  if (ctrl->value) {
   retval = amradio_set_mute(radio, AMRADIO_STOP);
   if (retval < 0) {
    amradio_dev_warn(&radio->videodev->dev,
     "amradio_stop failed\n");
    return -1;
   }
  } else {
   retval = amradio_set_mute(radio, AMRADIO_START);
   if (retval < 0) {
    amradio_dev_warn(&radio->videodev->dev,
     "amradio_start failed\n");
    return -1;
   }
  }
  return 0;
 }
 return -EINVAL;
}
