
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {scalar_t__ memory; } ;
struct omap24xxcam_fh {int vbq; struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {int mutex; scalar_t__ streaming; } ;
struct file {int dummy; } ;


 int EBUSY ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap24xxcam_vbq_alloc_mmap_buffers (int *,int) ;
 int omap24xxcam_vbq_free_mmap_buffers (int *) ;
 int videobuf_reqbufs (int *,struct v4l2_requestbuffers*) ;

__attribute__((used)) static int vidioc_reqbufs(struct file *file, void *fh,
     struct v4l2_requestbuffers *b)
{
 struct omap24xxcam_fh *ofh = fh;
 struct omap24xxcam_device *cam = ofh->cam;
 int rval;

 mutex_lock(&cam->mutex);
 if (cam->streaming) {
  mutex_unlock(&cam->mutex);
  return -EBUSY;
 }

 omap24xxcam_vbq_free_mmap_buffers(&ofh->vbq);
 mutex_unlock(&cam->mutex);

 rval = videobuf_reqbufs(&ofh->vbq, b);





 if (rval < 0 || b->memory != V4L2_MEMORY_MMAP)
  goto out;

 rval = omap24xxcam_vbq_alloc_mmap_buffers(&ofh->vbq, rval);
 if (rval)
  omap24xxcam_vbq_free_mmap_buffers(&ofh->vbq);

out:
 return rval;
}
