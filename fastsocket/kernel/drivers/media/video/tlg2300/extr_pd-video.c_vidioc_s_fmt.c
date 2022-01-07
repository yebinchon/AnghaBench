
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pix; } ;
struct v4l2_format {scalar_t__ type; TYPE_1__ fmt; } ;
struct poseidon {int lock; struct file* file_for_stream; } ;
struct front_face {struct poseidon* pd; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int logs (struct front_face*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pd_vidioc_s_fmt (struct poseidon*,int *) ;

__attribute__((used)) static int vidioc_s_fmt(struct file *file, void *fh, struct v4l2_format *f)
{
 struct front_face *front = fh;
 struct poseidon *pd = front->pd;

 logs(front);

 if (V4L2_BUF_TYPE_VIDEO_CAPTURE != f->type)
  return -EINVAL;

 mutex_lock(&pd->lock);
 if (pd->file_for_stream == ((void*)0))
  pd->file_for_stream = file;
 else if (file != pd->file_for_stream) {
  mutex_unlock(&pd->lock);
  return -EINVAL;
 }

 pd_vidioc_s_fmt(pd, &f->fmt.pix);
 mutex_unlock(&pd->lock);
 return 0;
}
