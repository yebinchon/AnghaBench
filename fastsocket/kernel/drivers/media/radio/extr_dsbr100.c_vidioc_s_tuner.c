
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; } ;
struct file {int dummy; } ;
struct dsbr100_device {scalar_t__ removed; } ;


 int EINVAL ;
 int EIO ;
 struct dsbr100_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_tuner(struct file *file, void *priv,
    struct v4l2_tuner *v)
{
 struct dsbr100_device *radio = video_drvdata(file);


 if (radio->removed)
  return -EIO;

 if (v->index > 0)
  return -EINVAL;

 return 0;
}
