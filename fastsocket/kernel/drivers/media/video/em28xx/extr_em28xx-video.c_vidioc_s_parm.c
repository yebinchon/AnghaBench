
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_streamparm {scalar_t__ type; } ;
struct file {int dummy; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct TYPE_2__ {int is_webcam; } ;
struct em28xx {int v4l2_dev; TYPE_1__ board; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int s_parm ;
 int v4l2_device_call_until_err (int *,int ,int ,int ,struct v4l2_streamparm*) ;
 int video ;

__attribute__((used)) static int vidioc_s_parm(struct file *file, void *priv,
    struct v4l2_streamparm *p)
{
 struct em28xx_fh *fh = priv;
 struct em28xx *dev = fh->dev;

 if (!dev->board.is_webcam)
  return -EINVAL;

 if (p->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 return v4l2_device_call_until_err(&dev->v4l2_dev, 0, video, s_parm, p);
}
