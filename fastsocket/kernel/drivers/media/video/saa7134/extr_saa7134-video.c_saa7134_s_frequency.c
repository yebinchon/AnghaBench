
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; scalar_t__ type; int frequency; } ;
struct saa7134_fh {int radio; int prio; struct saa7134_dev* dev; } ;
struct saa7134_dev {int lock; int ctl_freq; int prio; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_ANALOG_TV ;
 scalar_t__ V4L2_TUNER_RADIO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_frequency ;
 int saa7134_tvaudio_do_scan (struct saa7134_dev*) ;
 int saa_call_all (struct saa7134_dev*,int ,int ,struct v4l2_frequency*) ;
 int tuner ;
 int v4l2_prio_check (int *,int ) ;

__attribute__((used)) static int saa7134_s_frequency(struct file *file, void *priv,
     struct v4l2_frequency *f)
{
 struct saa7134_fh *fh = priv;
 struct saa7134_dev *dev = fh->dev;
 int err;

 err = v4l2_prio_check(&dev->prio, fh->prio);
 if (0 != err)
  return err;

 if (0 != f->tuner)
  return -EINVAL;
 if (0 == fh->radio && V4L2_TUNER_ANALOG_TV != f->type)
  return -EINVAL;
 if (1 == fh->radio && V4L2_TUNER_RADIO != f->type)
  return -EINVAL;
 mutex_lock(&dev->lock);
 dev->ctl_freq = f->frequency;

 saa_call_all(dev, tuner, s_frequency, f);

 saa7134_tvaudio_do_scan(dev);
 mutex_unlock(&dev->lock);
 return 0;
}
