
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoltrix {int dummy; } ;
struct v4l2_tuner {scalar_t__ index; int rangelow; int rangehigh; int rxsubchans; int signal; int audmode; int capability; int type; int name; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_TUNER_CAP_LOW ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_MODE_STEREO ;
 int V4L2_TUNER_RADIO ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int strlcpy (int ,char*,int) ;
 struct zoltrix* video_drvdata (struct file*) ;
 int zol_getsigstr (struct zoltrix*) ;
 scalar_t__ zol_is_stereo (struct zoltrix*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv,
     struct v4l2_tuner *v)
{
 struct zoltrix *zol = video_drvdata(file);

 if (v->index > 0)
  return -EINVAL;

 strlcpy(v->name, "FM", sizeof(v->name));
 v->type = V4L2_TUNER_RADIO;
 v->rangelow = 88 * 16000;
 v->rangehigh = 108 * 16000;
 v->rxsubchans = V4L2_TUNER_SUB_MONO | V4L2_TUNER_SUB_STEREO;
 v->capability = V4L2_TUNER_CAP_LOW;
 if (zol_is_stereo(zol))
  v->audmode = V4L2_TUNER_MODE_STEREO;
 else
  v->audmode = V4L2_TUNER_MODE_MONO;
 v->signal = 0xFFFF * zol_getsigstr(zol);
 return 0;
}
