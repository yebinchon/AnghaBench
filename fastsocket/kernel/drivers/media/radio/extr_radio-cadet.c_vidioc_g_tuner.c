
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int index; int capability; int rangelow; int rangehigh; int rxsubchans; int signal; void* audmode; int name; int type; } ;
struct file {int dummy; } ;
struct cadet {int sigstrength; } ;


 int EINVAL ;
 int V4L2_TUNER_CAP_LOW ;
 int V4L2_TUNER_CAP_RDS ;
 int V4L2_TUNER_CAP_STEREO ;
 void* V4L2_TUNER_MODE_MONO ;
 void* V4L2_TUNER_MODE_STEREO ;
 int V4L2_TUNER_RADIO ;

 int V4L2_TUNER_SUB_RDS ;

 int cadet_getstereo (struct cadet*) ;
 int strlcpy (int ,char*,int) ;
 struct cadet* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv,
    struct v4l2_tuner *v)
{
 struct cadet *dev = video_drvdata(file);

 v->type = V4L2_TUNER_RADIO;
 switch (v->index) {
 case 0:
  strlcpy(v->name, "FM", sizeof(v->name));
  v->capability = V4L2_TUNER_CAP_STEREO | V4L2_TUNER_CAP_RDS;
  v->rangelow = 1400;
  v->rangehigh = 1728;
  v->rxsubchans = cadet_getstereo(dev);
  switch (v->rxsubchans) {
  case 129:
   v->audmode = V4L2_TUNER_MODE_MONO;
   break;
  case 128:
   v->audmode = V4L2_TUNER_MODE_STEREO;
   break;
  default:
   break;
  }
  v->rxsubchans |= V4L2_TUNER_SUB_RDS;
  break;
 case 1:
  strlcpy(v->name, "AM", sizeof(v->name));
  v->capability = V4L2_TUNER_CAP_LOW;
  v->rangelow = 8320;
  v->rangehigh = 26400;
  v->rxsubchans = 129;
  v->audmode = V4L2_TUNER_MODE_MONO;
  break;
 default:
  return -EINVAL;
 }
 v->signal = dev->sigstrength;
 return 0;
}
