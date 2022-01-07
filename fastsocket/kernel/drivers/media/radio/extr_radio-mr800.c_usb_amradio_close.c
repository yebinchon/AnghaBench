
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct amradio_device {TYPE_1__* videodev; int removed; int lock; scalar_t__ users; } ;
struct TYPE_2__ {int dev; } ;


 int AMRADIO_STOP ;
 int ENODEV ;
 int amradio_dev_warn (int *,char*) ;
 int amradio_set_mute (struct amradio_device*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int video_devdata (struct file*) ;
 struct amradio_device* video_get_drvdata (int ) ;

__attribute__((used)) static int usb_amradio_close(struct file *file)
{
 struct amradio_device *radio = video_get_drvdata(video_devdata(file));
 int retval;

 if (!radio)
  return -ENODEV;

 mutex_lock(&radio->lock);
 radio->users = 0;
 mutex_unlock(&radio->lock);

 if (!radio->removed) {
  retval = amradio_set_mute(radio, AMRADIO_STOP);
  if (retval < 0)
   amradio_dev_warn(&radio->videodev->dev,
    "amradio_stop failed\n");
 }

 return 0;
}
