
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_streamparm {int dummy; } ;
struct omap24xxcam_fh {struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {int mutex; int sdev; } ;
struct file {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vidioc_int_g_parm (int ,struct v4l2_streamparm*) ;

__attribute__((used)) static int vidioc_g_parm(struct file *file, void *fh,
    struct v4l2_streamparm *a) {
 struct omap24xxcam_fh *ofh = fh;
 struct omap24xxcam_device *cam = ofh->cam;
 int rval;

 mutex_lock(&cam->mutex);
 rval = vidioc_int_g_parm(cam->sdev, a);
 mutex_unlock(&cam->mutex);

 return rval;
}
