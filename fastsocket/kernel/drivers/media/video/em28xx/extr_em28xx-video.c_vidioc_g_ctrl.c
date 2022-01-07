
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_control {int id; } ;
struct file {int dummy; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct TYPE_2__ {scalar_t__ ac97; } ;
struct em28xx {int v4l2_dev; TYPE_1__ audio_mode; } ;


 int EINVAL ;
 scalar_t__ EM28XX_NO_AC97 ;
 int ac97_get_ctrl (struct em28xx*,struct v4l2_control*) ;
 int check_dev (struct em28xx*) ;
 scalar_t__ check_subdev_ctrl (struct em28xx*,int ) ;
 int core ;
 int g_ctrl ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_control*) ;

__attribute__((used)) static int vidioc_g_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctrl)
{
 struct em28xx_fh *fh = priv;
 struct em28xx *dev = fh->dev;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;
 rc = 0;


 if (dev->audio_mode.ac97 != EM28XX_NO_AC97)
  rc = ac97_get_ctrl(dev, ctrl);
 else
  rc = 1;


 if (rc == 1) {
  if (check_subdev_ctrl(dev, ctrl->id))
   return -EINVAL;

  v4l2_device_call_all(&dev->v4l2_dev, 0, core, g_ctrl, ctrl);
  rc = 0;
 }

 return rc;
}
