
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int capability; int signal; int audmode; int rxsubchans; int rangehigh; int rangelow; int type; int name; } ;
struct fmr2 {int lock; scalar_t__ stereo; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int RSF16_MAXFREQ ;
 int RSF16_MINFREQ ;
 int V4L2_TUNER_CAP_LOW ;
 int V4L2_TUNER_CAP_STEREO ;
 int V4L2_TUNER_MODE_STEREO ;
 int V4L2_TUNER_RADIO ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int fmr2_getsigstr (struct fmr2*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlcpy (int ,char*,int) ;
 struct fmr2* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv,
     struct v4l2_tuner *v)
{
 struct fmr2 *fmr2 = video_drvdata(file);

 if (v->index > 0)
  return -EINVAL;

 strlcpy(v->name, "FM", sizeof(v->name));
 v->type = V4L2_TUNER_RADIO;

 v->rangelow = RSF16_MINFREQ;
 v->rangehigh = RSF16_MAXFREQ;
 v->rxsubchans = fmr2->stereo ? V4L2_TUNER_SUB_STEREO :
     V4L2_TUNER_SUB_MONO;
 v->capability = V4L2_TUNER_CAP_STEREO | V4L2_TUNER_CAP_LOW;
 v->audmode = V4L2_TUNER_MODE_STEREO;
 mutex_lock(&fmr2->lock);
 v->signal = fmr2_getsigstr(fmr2);
 mutex_unlock(&fmr2->lock);
 return 0;
}
