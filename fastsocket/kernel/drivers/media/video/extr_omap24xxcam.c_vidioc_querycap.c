
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int version; int card; int driver; } ;
struct omap24xxcam_fh {struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {TYPE_1__* vfd; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int CAM_NAME ;
 int OMAP24XXCAM_VERSION ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *fh,
      struct v4l2_capability *cap)
{
 struct omap24xxcam_fh *ofh = fh;
 struct omap24xxcam_device *cam = ofh->cam;

 strlcpy(cap->driver, CAM_NAME, sizeof(cap->driver));
 strlcpy(cap->card, cam->vfd->name, sizeof(cap->card));
 cap->version = OMAP24XXCAM_VERSION;
 cap->capabilities = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING;

 return 0;
}
