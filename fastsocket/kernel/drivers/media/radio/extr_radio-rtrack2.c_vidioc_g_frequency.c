
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; int type; } ;
struct rtrack2 {int curfreq; } ;
struct file {int dummy; } ;


 int V4L2_TUNER_RADIO ;
 struct rtrack2* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *priv,
    struct v4l2_frequency *f)
{
 struct rtrack2 *rt = video_drvdata(file);

 f->type = V4L2_TUNER_RADIO;
 f->frequency = rt->curfreq;
 return 0;
}
