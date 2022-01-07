
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct TYPE_4__ {int vb_lock; } ;
struct omap24xxcam_fh {TYPE_2__ vbq; int pix; struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {int mutex; int sdev; scalar_t__ streaming; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int memset (struct v4l2_format*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vidioc_g_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;
 int vidioc_int_s_fmt_cap (int ,struct v4l2_format*) ;

__attribute__((used)) static int vidioc_s_fmt_vid_cap(struct file *file, void *fh,
    struct v4l2_format *f)
{
 struct omap24xxcam_fh *ofh = fh;
 struct omap24xxcam_device *cam = ofh->cam;
 int rval;

 mutex_lock(&cam->mutex);
 if (cam->streaming) {
  rval = -EBUSY;
  goto out;
 }

 rval = vidioc_int_s_fmt_cap(cam->sdev, f);

out:
 mutex_unlock(&cam->mutex);

 if (!rval) {
  mutex_lock(&ofh->vbq.vb_lock);
  ofh->pix = f->fmt.pix;
  mutex_unlock(&ofh->vbq.vb_lock);
 }

 memset(f, 0, sizeof(*f));
 vidioc_g_fmt_vid_cap(file, fh, f);

 return rval;
}
