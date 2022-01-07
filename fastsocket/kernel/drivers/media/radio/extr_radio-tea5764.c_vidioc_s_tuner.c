
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int audmode; } ;
struct tea5764_device {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int tea5764_set_audout_mode (struct tea5764_device*,int ) ;
 struct tea5764_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_tuner(struct file *file, void *priv,
    struct v4l2_tuner *v)
{
 struct tea5764_device *radio = video_drvdata(file);

 if (v->index > 0)
  return -EINVAL;

 tea5764_set_audout_mode(radio, v->audmode);
 return 0;
}
