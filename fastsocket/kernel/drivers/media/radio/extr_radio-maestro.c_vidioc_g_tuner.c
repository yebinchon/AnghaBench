
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int rxsubchans; int signal; int audmode; int capability; int rangehigh; int rangelow; int type; int name; } ;
struct maestro {int lock; int tuned; scalar_t__ stereo; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int FREQ_HI ;
 int FREQ_LO ;
 int V4L2_TUNER_CAP_LOW ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_MODE_STEREO ;
 int V4L2_TUNER_RADIO ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radio_bits_get (struct maestro*) ;
 int strlcpy (int ,char*,int) ;
 struct maestro* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv,
     struct v4l2_tuner *v)
{
 struct maestro *dev = video_drvdata(file);

 if (v->index > 0)
  return -EINVAL;

 mutex_lock(&dev->lock);
 radio_bits_get(dev);

 strlcpy(v->name, "FM", sizeof(v->name));
 v->type = V4L2_TUNER_RADIO;
 v->rangelow = FREQ_LO;
 v->rangehigh = FREQ_HI;
 v->rxsubchans = V4L2_TUNER_SUB_MONO | V4L2_TUNER_SUB_STEREO;
 v->capability = V4L2_TUNER_CAP_LOW;
 if (dev->stereo)
  v->audmode = V4L2_TUNER_MODE_STEREO;
 else
  v->audmode = V4L2_TUNER_MODE_MONO;
 v->signal = dev->tuned;
 mutex_unlock(&dev->lock);
 return 0;
}
