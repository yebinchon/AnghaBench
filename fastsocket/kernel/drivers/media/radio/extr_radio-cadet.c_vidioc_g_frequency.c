
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; int type; int tuner; } ;
struct file {int dummy; } ;
struct cadet {int curtuner; } ;


 int V4L2_TUNER_RADIO ;
 int cadet_getfreq (struct cadet*) ;
 struct cadet* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *priv,
    struct v4l2_frequency *f)
{
 struct cadet *dev = video_drvdata(file);

 f->tuner = dev->curtuner;
 f->type = V4L2_TUNER_RADIO;
 f->frequency = cadet_getfreq(dev);
 return 0;
}
