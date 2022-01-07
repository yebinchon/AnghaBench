
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoltrix {int dummy; } ;
struct v4l2_frequency {int frequency; } ;
struct file {int dummy; } ;


 int EINVAL ;
 struct zoltrix* video_drvdata (struct file*) ;
 scalar_t__ zol_setfreq (struct zoltrix*,int ) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
     struct v4l2_frequency *f)
{
 struct zoltrix *zol = video_drvdata(file);

 if (zol_setfreq(zol, f->frequency) != 0)
  return -EINVAL;
 return 0;
}
