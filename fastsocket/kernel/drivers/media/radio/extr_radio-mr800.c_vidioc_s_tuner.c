
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_tuner {scalar_t__ index; int audmode; } ;
struct file {int dummy; } ;
struct amradio_device {TYPE_1__* videodev; scalar_t__ removed; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int EIO ;


 int WANT_MONO ;
 int WANT_STEREO ;
 int amradio_dev_warn (int *,char*) ;
 int amradio_set_stereo (struct amradio_device*,int ) ;
 int video_devdata (struct file*) ;
 struct amradio_device* video_get_drvdata (int ) ;

__attribute__((used)) static int vidioc_s_tuner(struct file *file, void *priv,
    struct v4l2_tuner *v)
{
 struct amradio_device *radio = video_get_drvdata(video_devdata(file));
 int retval;


 if (radio->removed)
  return -EIO;

 if (v->index > 0)
  return -EINVAL;


 switch (v->audmode) {
 case 129:
  retval = amradio_set_stereo(radio, WANT_MONO);
  if (retval < 0)
   amradio_dev_warn(&radio->videodev->dev,
    "set mono failed\n");
  break;
 case 128:
  retval = amradio_set_stereo(radio, WANT_STEREO);
  if (retval < 0)
   amradio_dev_warn(&radio->videodev->dev,
    "set stereo failed\n");
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
