
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int index; } ;
struct file {int dummy; } ;
struct cadet {int curtuner; } ;


 int EINVAL ;
 struct cadet* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_tuner(struct file *file, void *priv,
    struct v4l2_tuner *v)
{
 struct cadet *dev = video_drvdata(file);

 if (v->index != 0 && v->index != 1)
  return -EINVAL;
 dev->curtuner = v->index;
 return 0;
}
