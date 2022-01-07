
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct maxiradio {int lock; int freq; int muted; } ;
struct file {int dummy; } ;


 int EINVAL ;

 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_freq (struct maxiradio*,int ) ;
 int turn_power (struct maxiradio*,int ) ;
 struct maxiradio* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *priv,
  struct v4l2_control *ctrl)
{
 struct maxiradio *dev = video_drvdata(file);

 switch (ctrl->id) {
 case 128:
  mutex_lock(&dev->lock);
  dev->muted = ctrl->value;
  if (dev->muted)
   turn_power(dev, 0);
  else
   set_freq(dev, dev->freq);
  mutex_unlock(&dev->lock);
  return 0;
 }

 return -EINVAL;
}
