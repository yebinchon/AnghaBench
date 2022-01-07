
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sizeimage; int pixelformat; } ;
struct TYPE_3__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct cafe_format_struct {int mbus_code; } ;
struct cafe_camera {scalar_t__ state; scalar_t__ n_sbufs; scalar_t__ nbufs; scalar_t__ dma_buf_size; int s_mutex; TYPE_2__ pix_format; int mbus_code; } ;


 int EBUSY ;
 int ENOMEM ;
 scalar_t__ S_IDLE ;
 scalar_t__ cafe_alloc_dma_bufs (struct cafe_camera*,int ) ;
 int cafe_cam_configure (struct cafe_camera*) ;
 int cafe_ctlr_configure (struct cafe_camera*) ;
 struct cafe_format_struct* cafe_find_format (int ) ;
 int cafe_free_dma_bufs (struct cafe_camera*) ;
 int cafe_vidioc_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cafe_vidioc_s_fmt_vid_cap(struct file *filp, void *priv,
  struct v4l2_format *fmt)
{
 struct cafe_camera *cam = priv;
 struct cafe_format_struct *f;
 int ret;





 if (cam->state != S_IDLE || cam->n_sbufs > 0)
  return -EBUSY;

 f = cafe_find_format(fmt->fmt.pix.pixelformat);




 ret = cafe_vidioc_try_fmt_vid_cap(filp, priv, fmt);
 if (ret)
  return ret;




 mutex_lock(&cam->s_mutex);
 cam->pix_format = fmt->fmt.pix;
 cam->mbus_code = f->mbus_code;




 ret = -ENOMEM;
 if (cam->nbufs > 0 && cam->dma_buf_size < cam->pix_format.sizeimage)
  cafe_free_dma_bufs(cam);
 if (cam->nbufs == 0) {
  if (cafe_alloc_dma_bufs(cam, 0))
   goto out;
 }



 ret = cafe_cam_configure(cam);
 if (! ret)
  ret = cafe_ctlr_configure(cam);
  out:
 mutex_unlock(&cam->s_mutex);
 return ret;
}
