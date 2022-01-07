
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_audio {scalar_t__ index; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {scalar_t__ ctl_ainput; } ;
struct TYPE_2__ {scalar_t__ amux; } ;


 int EINVAL ;
 TYPE_1__* INPUT (scalar_t__) ;
 int cx231xx_set_audio_input (struct cx231xx*,scalar_t__) ;

__attribute__((used)) static int vidioc_s_audio(struct file *file, void *priv, struct v4l2_audio *a)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;
 int status = 0;


 if (a->index != dev->ctl_ainput)
  return -EINVAL;

 dev->ctl_ainput = INPUT(a->index)->amux;
 status = cx231xx_set_audio_input(dev, dev->ctl_ainput);

 return status;
}
