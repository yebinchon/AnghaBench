
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; int type; } ;
struct maestro {int lock; } ;
struct file {int dummy; } ;


 int BITS2FREQ (int ) ;
 int V4L2_TUNER_RADIO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radio_bits_get (struct maestro*) ;
 struct maestro* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *priv,
     struct v4l2_frequency *f)
{
 struct maestro *dev = video_drvdata(file);

 f->type = V4L2_TUNER_RADIO;
 mutex_lock(&dev->lock);
 f->frequency = BITS2FREQ(radio_bits_get(dev));
 mutex_unlock(&dev->lock);
 return 0;
}
