
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; } ;
struct fmr2 {int curfreq; int lock; int mute; scalar_t__ curvol; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int RSF16_MAXFREQ ;
 int RSF16_MINFREQ ;
 int fmr2_setfreq (struct fmr2*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fmr2* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
     struct v4l2_frequency *f)
{
 struct fmr2 *fmr2 = video_drvdata(file);

 if (f->frequency < RSF16_MINFREQ ||
   f->frequency > RSF16_MAXFREQ)
  return -EINVAL;


 fmr2->curfreq = (f->frequency / 200) * 200;


 if (fmr2->curvol && !fmr2->mute) {
  mutex_lock(&fmr2->lock);
  fmr2_setfreq(fmr2);
  mutex_unlock(&fmr2->lock);
 }
 return 0;
}
