
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; int frequency; } ;
struct cx23885_dev {scalar_t__ tuner_type; int lock; int freq; } ;


 int EINVAL ;
 scalar_t__ UNSET ;
 int call_all (struct cx23885_dev*,int ,int ,struct v4l2_frequency*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_frequency ;
 int tuner ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int cx23885_set_freq(struct cx23885_dev *dev, struct v4l2_frequency *f)
{
 if (unlikely(UNSET == dev->tuner_type))
  return -EINVAL;
 if (unlikely(f->tuner != 0))
  return -EINVAL;

 mutex_lock(&dev->lock);
 dev->freq = f->frequency;

 call_all(dev, tuner, s_frequency, f);


 msleep(10);

 mutex_unlock(&dev->lock);

 return 0;
}
