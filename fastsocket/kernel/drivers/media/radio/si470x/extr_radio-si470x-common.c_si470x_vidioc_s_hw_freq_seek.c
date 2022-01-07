
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_hw_freq_seek {scalar_t__ tuner; int seek_upward; int wrap_around; } ;
struct si470x_device {TYPE_1__* videodev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int dev_warn (int *,char*,int) ;
 int si470x_disconnect_check (struct si470x_device*) ;
 int si470x_set_seek (struct si470x_device*,int ,int ) ;
 struct si470x_device* video_drvdata (struct file*) ;

__attribute__((used)) static int si470x_vidioc_s_hw_freq_seek(struct file *file, void *priv,
  struct v4l2_hw_freq_seek *seek)
{
 struct si470x_device *radio = video_drvdata(file);
 int retval = 0;


 retval = si470x_disconnect_check(radio);
 if (retval)
  goto done;

 if (seek->tuner != 0) {
  retval = -EINVAL;
  goto done;
 }

 retval = si470x_set_seek(radio, seek->wrap_around, seek->seek_upward);

done:
 if (retval < 0)
  dev_warn(&radio->videodev->dev,
   "set hardware frequency seek failed with %d\n", retval);
 return retval;
}
