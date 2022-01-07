
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_control {int value; int id; } ;
struct file {int dummy; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct TYPE_2__ {scalar_t__ ac97; } ;
struct em28xx {int volume; int mute; int v4l2_dev; TYPE_1__ audio_mode; } ;


 scalar_t__ EM28XX_NO_AC97 ;


 int ac97_set_ctrl (struct em28xx*,struct v4l2_control*) ;
 int check_dev (struct em28xx*) ;
 int check_subdev_ctrl (struct em28xx*,int ) ;
 int core ;
 int em28xx_audio_analog_set (struct em28xx*) ;
 int s_ctrl ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_control*) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctrl)
{
 struct em28xx_fh *fh = priv;
 struct em28xx *dev = fh->dev;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;


 if (dev->audio_mode.ac97 != EM28XX_NO_AC97)
  rc = ac97_set_ctrl(dev, ctrl);
 else
  rc = 1;


 if (rc == 1) {
  rc = check_subdev_ctrl(dev, ctrl->id);
  if (!rc)
   v4l2_device_call_all(&dev->v4l2_dev, 0,
          core, s_ctrl, ctrl);






  switch (ctrl->id) {
  case 129:
   dev->mute = ctrl->value;
   rc = em28xx_audio_analog_set(dev);
   break;
  case 128:
   dev->volume = ctrl->value;
   rc = em28xx_audio_analog_set(dev);
  }
 }
 return (rc < 0) ? rc : 0;
}
