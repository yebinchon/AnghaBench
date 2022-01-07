
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct videobuf_buffer {scalar_t__ baddr; } ;
struct v4l2_buffer {size_t index; } ;
struct TYPE_3__ {struct videobuf_buffer** bufs; } ;
struct omap24xxcam_fh {TYPE_1__ vbq; struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {int sensor_reset_work; int mutex; int sdev; } ;
struct file {int f_flags; } ;


 int EAGAIN ;
 int EIO ;
 int O_NONBLOCK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;
 int videobuf_dqbuf (TYPE_1__*,struct v4l2_buffer*,int) ;
 int videobuf_qbuf (TYPE_1__*,struct v4l2_buffer*) ;
 int vidioc_int_g_needs_reset (int ,void*) ;

__attribute__((used)) static int vidioc_dqbuf(struct file *file, void *fh, struct v4l2_buffer *b)
{
 struct omap24xxcam_fh *ofh = fh;
 struct omap24xxcam_device *cam = ofh->cam;
 struct videobuf_buffer *vb;
 int rval;

videobuf_dqbuf_again:
 rval = videobuf_dqbuf(&ofh->vbq, b, file->f_flags & O_NONBLOCK);
 if (rval)
  goto out;

 vb = ofh->vbq.bufs[b->index];

 mutex_lock(&cam->mutex);

 rval = vidioc_int_g_needs_reset(cam->sdev, (void *)vb->baddr);
 mutex_unlock(&cam->mutex);
 if (rval == -EIO)
  schedule_work(&cam->sensor_reset_work);
 else
  rval = 0;

out:





 if (rval == -EIO) {
  videobuf_qbuf(&ofh->vbq, b);
  if (!(file->f_flags & O_NONBLOCK))
   goto videobuf_dqbuf_again;




  rval = -EAGAIN;
 }

 return rval;
}
