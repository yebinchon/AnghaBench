
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_buffer {size_t index; } ;
struct file {struct cafe_camera* private_data; } ;
struct cafe_camera {size_t n_sbufs; int s_mutex; TYPE_1__* sb_bufs; } ;
struct TYPE_2__ {struct v4l2_buffer v4lbuf; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cafe_vidioc_querybuf(struct file *filp, void *priv,
  struct v4l2_buffer *buf)
{
 struct cafe_camera *cam = filp->private_data;
 int ret = -EINVAL;

 mutex_lock(&cam->s_mutex);
 if (buf->index >= cam->n_sbufs)
  goto out;
 *buf = cam->sb_bufs[buf->index].v4lbuf;
 ret = 0;
  out:
 mutex_unlock(&cam->s_mutex);
 return ret;
}
