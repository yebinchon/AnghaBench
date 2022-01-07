
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {scalar_t__ memory; scalar_t__ count; } ;
struct file {struct cafe_camera* private_data; } ;
struct cafe_sio_buffer {int dummy; } ;
struct cafe_camera {scalar_t__ state; scalar_t__ n_sbufs; int s_mutex; int * sb_bufs; struct file* owner; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ S_IDLE ;
 scalar_t__ S_STREAMING ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 int cafe_ctlr_stop_dma (struct cafe_camera*) ;
 int cafe_free_sio_buffers (struct cafe_camera*) ;
 int cafe_setup_siobuf (struct cafe_camera*,scalar_t__) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 scalar_t__ max_buffers ;
 scalar_t__ min_buffers ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cafe_vidioc_reqbufs(struct file *filp, void *priv,
  struct v4l2_requestbuffers *req)
{
 struct cafe_camera *cam = filp->private_data;
 int ret = 0;





 if (req->memory != V4L2_MEMORY_MMAP)
  return -EINVAL;




 mutex_lock(&cam->s_mutex);
 if (req->count == 0) {
  if (cam->state == S_STREAMING)
   cafe_ctlr_stop_dma(cam);
  ret = cafe_free_sio_buffers (cam);
  goto out;
 }





 if (cam->state != S_IDLE || (cam->owner && cam->owner != filp)) {
  ret = -EBUSY;
  goto out;
 }
 cam->owner = filp;

 if (req->count < min_buffers)
  req->count = min_buffers;
 else if (req->count > max_buffers)
  req->count = max_buffers;
 if (cam->n_sbufs > 0) {
  ret = cafe_free_sio_buffers(cam);
  if (ret)
   goto out;
 }

 cam->sb_bufs = kzalloc(req->count*sizeof(struct cafe_sio_buffer),
   GFP_KERNEL);
 if (cam->sb_bufs == ((void*)0)) {
  ret = -ENOMEM;
  goto out;
 }
 for (cam->n_sbufs = 0; cam->n_sbufs < req->count; (cam->n_sbufs++)) {
  ret = cafe_setup_siobuf(cam, cam->n_sbufs);
  if (ret)
   break;
 }

 if (cam->n_sbufs == 0)
  kfree(cam->sb_bufs);
 req->count = cam->n_sbufs;

  out:
 mutex_unlock(&cam->s_mutex);
 return ret;
}
