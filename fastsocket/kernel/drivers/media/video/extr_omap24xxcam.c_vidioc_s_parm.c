
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_streamparm {int type; } ;
struct omap24xxcam_fh {struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {int mutex; int sdev; scalar_t__ streaming; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap24xxcam_sensor_if_enable (struct omap24xxcam_device*) ;
 int vidioc_int_g_parm (int ,struct v4l2_streamparm*) ;
 int vidioc_int_s_parm (int ,struct v4l2_streamparm*) ;

__attribute__((used)) static int vidioc_s_parm(struct file *file, void *fh,
    struct v4l2_streamparm *a)
{
 struct omap24xxcam_fh *ofh = fh;
 struct omap24xxcam_device *cam = ofh->cam;
 struct v4l2_streamparm old_streamparm;
 int rval;

 mutex_lock(&cam->mutex);
 if (cam->streaming) {
  rval = -EBUSY;
  goto out;
 }

 old_streamparm.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 rval = vidioc_int_g_parm(cam->sdev, &old_streamparm);
 if (rval)
  goto out;

 rval = vidioc_int_s_parm(cam->sdev, a);
 if (rval)
  goto out;

 rval = omap24xxcam_sensor_if_enable(cam);




 if (rval)
  vidioc_int_s_parm(cam->sdev, &old_streamparm);

out:
 mutex_unlock(&cam->mutex);

 return rval;
}
