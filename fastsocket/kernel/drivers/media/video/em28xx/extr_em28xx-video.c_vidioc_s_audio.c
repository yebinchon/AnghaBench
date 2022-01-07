
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_audio {scalar_t__ index; } ;
struct file {int dummy; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct TYPE_3__ {int has_audio; } ;
struct em28xx {scalar_t__ ctl_aoutput; int ctl_ainput; TYPE_1__ audio_mode; } ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ aout; int amux; } ;


 int EINVAL ;
 scalar_t__ EM28XX_AOUT_MASTER ;
 TYPE_2__* INPUT (scalar_t__) ;
 scalar_t__ MAX_EM28XX_INPUT ;

__attribute__((used)) static int vidioc_s_audio(struct file *file, void *priv, struct v4l2_audio *a)
{
 struct em28xx_fh *fh = priv;
 struct em28xx *dev = fh->dev;


 if (!dev->audio_mode.has_audio)
  return -EINVAL;

 if (a->index >= MAX_EM28XX_INPUT)
  return -EINVAL;
 if (0 == INPUT(a->index)->type)
  return -EINVAL;

 dev->ctl_ainput = INPUT(a->index)->amux;
 dev->ctl_aoutput = INPUT(a->index)->aout;

 if (!dev->ctl_aoutput)
  dev->ctl_aoutput = EM28XX_AOUT_MASTER;

 return 0;
}
