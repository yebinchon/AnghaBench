
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_tuner {scalar_t__ index; int audmode; } ;
struct si470x_device {TYPE_1__* videodev; int * registers; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 size_t POWERCFG ;
 int POWERCFG_MONO ;


 int dev_warn (int *,char*,int) ;
 int si470x_disconnect_check (struct si470x_device*) ;
 int si470x_set_register (struct si470x_device*,size_t) ;
 struct si470x_device* video_drvdata (struct file*) ;

__attribute__((used)) static int si470x_vidioc_s_tuner(struct file *file, void *priv,
  struct v4l2_tuner *tuner)
{
 struct si470x_device *radio = video_drvdata(file);
 int retval = -EINVAL;


 retval = si470x_disconnect_check(radio);
 if (retval)
  goto done;

 if (tuner->index != 0)
  goto done;


 switch (tuner->audmode) {
 case 129:
  radio->registers[POWERCFG] |= POWERCFG_MONO;
  break;
 case 128:
  radio->registers[POWERCFG] &= ~POWERCFG_MONO;
  break;
 default:
  goto done;
 }

 retval = si470x_set_register(radio, POWERCFG);

done:
 if (retval < 0)
  dev_warn(&radio->videodev->dev,
   "set tuner failed with %d\n", retval);
 return retval;
}
