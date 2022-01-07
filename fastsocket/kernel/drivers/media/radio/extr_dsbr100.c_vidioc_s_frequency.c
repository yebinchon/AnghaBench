
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_frequency {int frequency; } ;
struct file {int dummy; } ;
struct dsbr100_device {TYPE_1__* usbdev; int lock; int curfreq; scalar_t__ removed; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int dev_warn (int *,char*) ;
 int dsbr100_setfreq (struct dsbr100_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct dsbr100_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
    struct v4l2_frequency *f)
{
 struct dsbr100_device *radio = video_drvdata(file);
 int retval;


 if (radio->removed)
  return -EIO;

 mutex_lock(&radio->lock);
 radio->curfreq = f->frequency;
 mutex_unlock(&radio->lock);

 retval = dsbr100_setfreq(radio);
 if (retval < 0)
  dev_warn(&radio->usbdev->dev, "Set frequency failed\n");
 return 0;
}
