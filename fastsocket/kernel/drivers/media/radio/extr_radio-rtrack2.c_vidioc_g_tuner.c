
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int rangelow; int rangehigh; int signal; int audmode; int capability; int rxsubchans; int type; int name; } ;
struct rtrack2 {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_TUNER_CAP_LOW ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_RADIO ;
 int V4L2_TUNER_SUB_MONO ;
 int rt_getsigstr (struct rtrack2*) ;
 int strlcpy (int ,char*,int) ;
 struct rtrack2* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv,
    struct v4l2_tuner *v)
{
 struct rtrack2 *rt = video_drvdata(file);

 if (v->index > 0)
  return -EINVAL;

 strlcpy(v->name, "FM", sizeof(v->name));
 v->type = V4L2_TUNER_RADIO;
 v->rangelow = 88 * 16000;
 v->rangehigh = 108 * 16000;
 v->rxsubchans = V4L2_TUNER_SUB_MONO;
 v->capability = V4L2_TUNER_CAP_LOW;
 v->audmode = V4L2_TUNER_MODE_MONO;
 v->signal = 0xFFFF * rt_getsigstr(rt);
 return 0;
}
