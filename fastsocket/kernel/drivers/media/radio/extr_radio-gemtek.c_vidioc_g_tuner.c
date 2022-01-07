
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int capability; int signal; int rxsubchans; int audmode; int rangehigh; int rangelow; int type; int name; } ;
struct gemtek {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int GEMTEK_HIGHFREQ ;
 int GEMTEK_LOWFREQ ;
 int V4L2_TUNER_CAP_LOW ;
 int V4L2_TUNER_CAP_STEREO ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_MODE_STEREO ;
 int V4L2_TUNER_RADIO ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int gemtek_getsigstr (struct gemtek*) ;
 int strlcpy (int ,char*,int) ;
 struct gemtek* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv, struct v4l2_tuner *v)
{
 struct gemtek *gt = video_drvdata(file);

 if (v->index > 0)
  return -EINVAL;

 strlcpy(v->name, "FM", sizeof(v->name));
 v->type = V4L2_TUNER_RADIO;
 v->rangelow = GEMTEK_LOWFREQ;
 v->rangehigh = GEMTEK_HIGHFREQ;
 v->capability = V4L2_TUNER_CAP_LOW | V4L2_TUNER_CAP_STEREO;
 v->signal = 0xffff * gemtek_getsigstr(gt);
 if (v->signal) {
  v->audmode = V4L2_TUNER_MODE_STEREO;
  v->rxsubchans = V4L2_TUNER_SUB_STEREO;
 } else {
  v->audmode = V4L2_TUNER_MODE_MONO;
  v->rxsubchans = V4L2_TUNER_SUB_MONO;
 }
 return 0;
}
