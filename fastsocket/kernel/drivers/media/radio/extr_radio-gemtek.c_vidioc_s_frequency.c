
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; scalar_t__ type; int frequency; } ;
struct gemtek {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_RADIO ;
 int gemtek_setfreq (struct gemtek*,int ) ;
 struct gemtek* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
         struct v4l2_frequency *f)
{
 struct gemtek *gt = video_drvdata(file);

 if (f->tuner != 0 || f->type != V4L2_TUNER_RADIO)
  return -EINVAL;
 gemtek_setfreq(gt, f->frequency);
 return 0;
}
