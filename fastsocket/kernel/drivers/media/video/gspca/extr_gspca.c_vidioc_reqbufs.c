
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_requestbuffers {int memory; scalar_t__ count; } ;
struct gspca_dev {int const memory; int nframes; int streaming; int queue_lock; int usb_lock; scalar_t__ usb_err; TYPE_1__* frame; struct file* capt_file; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ vma_use_count; } ;


 int D_STREAM ;
 int EBUSY ;
 int EINVAL ;
 int ERESTARTSYS ;
 int const GSPCA_MEMORY_NO ;

 int PDEBUG (int ,char*,int,scalar_t__) ;


 int frame_alloc (struct gspca_dev*,struct file*,int const,scalar_t__) ;
 int frame_free (struct gspca_dev*) ;
 int gspca_init_transfer (struct gspca_dev*) ;
 int gspca_stream_off (struct gspca_dev*) ;
 int mutex_lock (int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vidioc_reqbufs(struct file *file, void *priv,
     struct v4l2_requestbuffers *rb)
{
 struct gspca_dev *gspca_dev = priv;
 int i, ret = 0, streaming;

 i = rb->memory;
 switch (i) {
 case 130:
 case 129:
 case 128:
  break;
 default:
  return -EINVAL;
 }
 if (mutex_lock_interruptible(&gspca_dev->queue_lock))
  return -ERESTARTSYS;

 if (gspca_dev->memory != GSPCA_MEMORY_NO
     && gspca_dev->memory != 130
     && gspca_dev->memory != rb->memory) {
  ret = -EBUSY;
  goto out;
 }


 if (gspca_dev->capt_file != ((void*)0)
     && gspca_dev->capt_file != file) {
  ret = -EBUSY;
  goto out;
 }


 for (i = 0; i < gspca_dev->nframes; i++) {
  if (gspca_dev->frame[i].vma_use_count) {
   ret = -EBUSY;
   goto out;
  }
 }


 streaming = gspca_dev->streaming;
 if (streaming) {
  mutex_lock(&gspca_dev->usb_lock);
  gspca_dev->usb_err = 0;
  gspca_stream_off(gspca_dev);
  mutex_unlock(&gspca_dev->usb_lock);
 }

 if (gspca_dev->memory == 130)
  streaming = 0;


 if (gspca_dev->nframes != 0)
  frame_free(gspca_dev);
 if (rb->count == 0)
  goto out;
 ret = frame_alloc(gspca_dev, file, rb->memory, rb->count);
 if (ret == 0) {
  rb->count = gspca_dev->nframes;
  if (streaming)
   ret = gspca_init_transfer(gspca_dev);
 }
out:
 mutex_unlock(&gspca_dev->queue_lock);
 PDEBUG(D_STREAM, "reqbufs st:%d c:%d", ret, rb->count);
 return ret;
}
