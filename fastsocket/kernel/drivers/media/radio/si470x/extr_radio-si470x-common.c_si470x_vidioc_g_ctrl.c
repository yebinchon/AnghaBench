
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_control {int id; int value; } ;
struct si470x_device {int* registers; TYPE_1__* videodev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 size_t POWERCFG ;
 int POWERCFG_DMUTE ;
 size_t SYSCONFIG2 ;
 int SYSCONFIG2_VOLUME ;


 int dev_warn (int *,char*,int) ;
 int si470x_disconnect_check (struct si470x_device*) ;
 struct si470x_device* video_drvdata (struct file*) ;

__attribute__((used)) static int si470x_vidioc_g_ctrl(struct file *file, void *priv,
  struct v4l2_control *ctrl)
{
 struct si470x_device *radio = video_drvdata(file);
 int retval = 0;


 retval = si470x_disconnect_check(radio);
 if (retval)
  goto done;

 switch (ctrl->id) {
 case 128:
  ctrl->value = radio->registers[SYSCONFIG2] &
    SYSCONFIG2_VOLUME;
  break;
 case 129:
  ctrl->value = ((radio->registers[POWERCFG] &
    POWERCFG_DMUTE) == 0) ? 1 : 0;
  break;
 default:
  retval = -EINVAL;
 }

done:
 if (retval < 0)
  dev_warn(&radio->videodev->dev,
   "get control failed with %d\n", retval);
 return retval;
}
