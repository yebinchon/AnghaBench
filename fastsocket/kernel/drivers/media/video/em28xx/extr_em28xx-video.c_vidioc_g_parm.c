
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int timeperframe; } ;
struct TYPE_5__ {TYPE_1__ capture; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_2__ parm; } ;
struct file {int dummy; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct TYPE_6__ {scalar_t__ is_webcam; } ;
struct em28xx {int norm; int v4l2_dev; TYPE_3__ board; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int g_parm ;
 int v4l2_device_call_until_err (int *,int ,int ,int ,struct v4l2_streamparm*) ;
 int v4l2_video_std_frame_period (int ,int *) ;
 int video ;

__attribute__((used)) static int vidioc_g_parm(struct file *file, void *priv,
    struct v4l2_streamparm *p)
{
 struct em28xx_fh *fh = priv;
 struct em28xx *dev = fh->dev;
 int rc = 0;

 if (p->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 if (dev->board.is_webcam)
  rc = v4l2_device_call_until_err(&dev->v4l2_dev, 0,
      video, g_parm, p);
 else
  v4l2_video_std_frame_period(dev->norm,
       &p->parm.capture.timeperframe);

 return rc;
}
