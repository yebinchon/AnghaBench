
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; } ;
struct maxiradio {int freq; int lock; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int FREQ_HI ;
 int FREQ_LO ;
 int dprintk (struct maxiradio*,int,char*,int,int,int,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_freq (struct maxiradio*,int) ;
 struct maxiradio* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
          struct v4l2_frequency *f)
{
 struct maxiradio *dev = video_drvdata(file);

 if (f->frequency < FREQ_LO || f->frequency > FREQ_HI) {
  dprintk(dev, 1, "radio freq (%d.%02d MHz) out of range (%d-%d)\n",
     f->frequency / 16000,
     f->frequency % 16000 * 100 / 16000,
     FREQ_LO / 16000, FREQ_HI / 16000);

  return -EINVAL;
 }

 mutex_lock(&dev->lock);
 dev->freq = f->frequency;
 set_freq(dev, dev->freq);
 msleep(125);
 mutex_unlock(&dev->lock);

 return 0;
}
