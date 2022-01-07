
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_frequency {int frequency; } ;
struct file {int dummy; } ;
struct amradio_device {TYPE_1__* videodev; int curfreq; int lock; scalar_t__ removed; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int amradio_dev_warn (int *,char*) ;
 int amradio_setfreq (struct amradio_device*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int video_devdata (struct file*) ;
 struct amradio_device* video_get_drvdata (int ) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
    struct v4l2_frequency *f)
{
 struct amradio_device *radio = video_get_drvdata(video_devdata(file));
 int retval;


 if (radio->removed)
  return -EIO;

 mutex_lock(&radio->lock);
 radio->curfreq = f->frequency;
 mutex_unlock(&radio->lock);

 retval = amradio_setfreq(radio, radio->curfreq);
 if (retval < 0)
  amradio_dev_warn(&radio->videodev->dev,
   "set frequency failed\n");
 return 0;
}
