
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_queryctrl {int id; scalar_t__ type; } ;
struct file {int dummy; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct TYPE_2__ {scalar_t__ ac97; } ;
struct em28xx {int v4l2_dev; TYPE_1__ audio_mode; } ;


 int EINVAL ;
 scalar_t__ EM28XX_NO_AC97 ;
 int ac97_queryctrl (struct v4l2_queryctrl*) ;
 int check_dev (struct em28xx*) ;
 int core ;
 int memset (struct v4l2_queryctrl*,int ,int) ;
 int queryctrl ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_queryctrl*) ;

__attribute__((used)) static int vidioc_queryctrl(struct file *file, void *priv,
    struct v4l2_queryctrl *qc)
{
 struct em28xx_fh *fh = priv;
 struct em28xx *dev = fh->dev;
 int id = qc->id;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 memset(qc, 0, sizeof(*qc));

 qc->id = id;


 if (dev->audio_mode.ac97 != EM28XX_NO_AC97) {
  rc = ac97_queryctrl(qc);
  if (!rc)
   return 0;
 }


 v4l2_device_call_all(&dev->v4l2_dev, 0, core, queryctrl, qc);

 if (qc->type)
  return 0;
 else
  return -EINVAL;
}
