
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; int type; } ;
struct file {int dummy; } ;
struct em28xx_fh {scalar_t__ radio; struct em28xx* dev; } ;
struct em28xx {int ctl_freq; } ;


 int V4L2_TUNER_ANALOG_TV ;
 int V4L2_TUNER_RADIO ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *priv,
    struct v4l2_frequency *f)
{
 struct em28xx_fh *fh = priv;
 struct em28xx *dev = fh->dev;

 f->type = fh->radio ? V4L2_TUNER_RADIO : V4L2_TUNER_ANALOG_TV;
 f->frequency = dev->ctl_freq;
 return 0;
}
