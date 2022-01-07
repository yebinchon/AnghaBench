
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ audmode; scalar_t__ index; } ;
struct trust {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_MODE_STEREO ;
 int tr_setstereo (struct trust*,int) ;
 struct trust* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_tuner(struct file *file, void *priv,
    struct v4l2_tuner *v)
{
 struct trust *tr = video_drvdata(file);

 if (v->index)
  return -EINVAL;
 tr_setstereo(tr, v->audmode == V4L2_TUNER_MODE_STEREO);
 return 0;
}
