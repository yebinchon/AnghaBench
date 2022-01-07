
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; int type; } ;
struct saa7134_fh {scalar_t__ radio; struct saa7134_dev* dev; } ;
struct saa7134_dev {int ctl_freq; } ;
struct file {int dummy; } ;


 int V4L2_TUNER_ANALOG_TV ;
 int V4L2_TUNER_RADIO ;

__attribute__((used)) static int saa7134_g_frequency(struct file *file, void *priv,
     struct v4l2_frequency *f)
{
 struct saa7134_fh *fh = priv;
 struct saa7134_dev *dev = fh->dev;

 f->type = fh->radio ? V4L2_TUNER_RADIO : V4L2_TUNER_ANALOG_TV;
 f->frequency = dev->ctl_freq;

 return 0;
}
