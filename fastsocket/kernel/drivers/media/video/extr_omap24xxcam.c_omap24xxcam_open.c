
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct videobuf_buffer {int dummy; } ;
struct TYPE_7__ {int pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct omap24xxcam_fh {int vbq_lock; int vbq; int pix; struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {TYPE_3__* sdev; int mutex; int users; TYPE_1__* vfd; } ;
struct file {struct omap24xxcam_fh* private_data; } ;
struct TYPE_10__ {struct omap24xxcam_device* priv; } ;
struct TYPE_9__ {int minor; } ;
struct TYPE_8__ {int module; } ;
struct TYPE_6__ {int minor; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_NONE ;
 int atomic_inc_return (int *) ;
 int kfree (struct omap24xxcam_fh*) ;
 struct omap24xxcam_fh* kzalloc (int,int ) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_5__ omap24xxcam ;
 int omap24xxcam_hwinit (struct omap24xxcam_device*) ;
 int omap24xxcam_poweron_reset (struct omap24xxcam_device*) ;
 scalar_t__ omap24xxcam_sensor_enable (struct omap24xxcam_device*) ;
 int omap24xxcam_vbq_ops ;
 int spin_lock_init (int *) ;
 int try_module_get (int ) ;
 TYPE_4__* video_devdata (struct file*) ;
 int videobuf_queue_sg_init (int *,int *,int *,int *,int ,int ,int,struct omap24xxcam_fh*) ;
 int vidioc_int_g_fmt_cap (TYPE_3__*,struct v4l2_format*) ;

__attribute__((used)) static int omap24xxcam_open(struct file *file)
{
 int minor = video_devdata(file)->minor;
 struct omap24xxcam_device *cam = omap24xxcam.priv;
 struct omap24xxcam_fh *fh;
 struct v4l2_format format;

 if (!cam || !cam->vfd || (cam->vfd->minor != minor))
  return -ENODEV;

 fh = kzalloc(sizeof(*fh), GFP_KERNEL);
 if (fh == ((void*)0))
  return -ENOMEM;

 mutex_lock(&cam->mutex);
 if (cam->sdev == ((void*)0) || !try_module_get(cam->sdev->module)) {
  mutex_unlock(&cam->mutex);
  goto out_try_module_get;
 }

 if (atomic_inc_return(&cam->users) == 1) {
  omap24xxcam_hwinit(cam);
  if (omap24xxcam_sensor_enable(cam)) {
   mutex_unlock(&cam->mutex);
   goto out_omap24xxcam_sensor_enable;
  }
 }
 mutex_unlock(&cam->mutex);

 fh->cam = cam;
 mutex_lock(&cam->mutex);
 vidioc_int_g_fmt_cap(cam->sdev, &format);
 mutex_unlock(&cam->mutex);

 fh->pix = format.fmt.pix;

 file->private_data = fh;

 spin_lock_init(&fh->vbq_lock);

 videobuf_queue_sg_init(&fh->vbq, &omap24xxcam_vbq_ops, ((void*)0),
    &fh->vbq_lock, V4L2_BUF_TYPE_VIDEO_CAPTURE,
    V4L2_FIELD_NONE,
    sizeof(struct videobuf_buffer), fh);

 return 0;

out_omap24xxcam_sensor_enable:
 omap24xxcam_poweron_reset(cam);
 module_put(cam->sdev->module);

out_try_module_get:
 kfree(fh);

 return -ENODEV;
}
