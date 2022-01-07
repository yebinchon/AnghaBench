
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ frequency; } ;
struct maestro {int lock; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int FREQ2BITS (scalar_t__) ;
 scalar_t__ FREQ_HI ;
 scalar_t__ FREQ_LO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radio_bits_set (struct maestro*,int ) ;
 struct maestro* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
     struct v4l2_frequency *f)
{
 struct maestro *dev = video_drvdata(file);

 if (f->frequency < FREQ_LO || f->frequency > FREQ_HI)
  return -EINVAL;
 mutex_lock(&dev->lock);
 radio_bits_set(dev, FREQ2BITS(f->frequency));
 mutex_unlock(&dev->lock);
 return 0;
}
