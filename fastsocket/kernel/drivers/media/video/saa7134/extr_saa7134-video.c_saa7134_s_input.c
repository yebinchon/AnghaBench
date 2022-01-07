
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7134_fh {int prio; struct saa7134_dev* dev; } ;
struct saa7134_dev {int lock; int prio; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int * name; } ;


 int EINVAL ;
 unsigned int SAA7134_INPUT_MAX ;
 TYPE_1__ card_in (struct saa7134_dev*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_prio_check (int *,int ) ;
 int video_mux (struct saa7134_dev*,unsigned int) ;

__attribute__((used)) static int saa7134_s_input(struct file *file, void *priv, unsigned int i)
{
 struct saa7134_fh *fh = priv;
 struct saa7134_dev *dev = fh->dev;
 int err;

 err = v4l2_prio_check(&dev->prio, fh->prio);
 if (0 != err)
  return err;

 if (i >= SAA7134_INPUT_MAX)
  return -EINVAL;
 if (((void*)0) == card_in(dev, i).name)
  return -EINVAL;
 mutex_lock(&dev->lock);
 video_mux(dev, i);
 mutex_unlock(&dev->lock);
 return 0;
}
