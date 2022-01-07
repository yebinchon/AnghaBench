
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; } ;
struct fmi {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int RSF16_MAXFREQ ;
 int RSF16_MINFREQ ;
 int fmi_setfreq (struct fmi*,int) ;
 struct fmi* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
     struct v4l2_frequency *f)
{
 struct fmi *fmi = video_drvdata(file);

 if (f->frequency < RSF16_MINFREQ ||
   f->frequency > RSF16_MAXFREQ)
  return -EINVAL;


 fmi_setfreq(fmi, (f->frequency / 800) * 800);
 return 0;
}
