
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct amradio_device {int users; int muted; TYPE_1__* videodev; int curfreq; } ;
struct TYPE_2__ {int dev; } ;


 int AMRADIO_START ;
 int EIO ;
 int WANT_STEREO ;
 int amradio_dev_warn (int *,char*) ;
 int amradio_set_mute (struct amradio_device*,int ) ;
 int amradio_set_stereo (struct amradio_device*,int ) ;
 int amradio_setfreq (struct amradio_device*,int ) ;
 int lock_kernel () ;
 int unlock_kernel () ;
 int video_devdata (struct file*) ;
 struct amradio_device* video_get_drvdata (int ) ;

__attribute__((used)) static int usb_amradio_open(struct file *file)
{
 struct amradio_device *radio = video_get_drvdata(video_devdata(file));
 int retval;

 lock_kernel();

 radio->users = 1;
 radio->muted = 1;

 retval = amradio_set_mute(radio, AMRADIO_START);
 if (retval < 0) {
  amradio_dev_warn(&radio->videodev->dev,
   "radio did not start up properly\n");
  radio->users = 0;
  unlock_kernel();
  return -EIO;
 }

 retval = amradio_set_stereo(radio, WANT_STEREO);
 if (retval < 0)
  amradio_dev_warn(&radio->videodev->dev,
   "set stereo failed\n");

 retval = amradio_setfreq(radio, radio->curfreq);
 if (retval < 0)
  amradio_dev_warn(&radio->videodev->dev,
   "set frequency failed\n");

 unlock_kernel();
 return 0;
}
