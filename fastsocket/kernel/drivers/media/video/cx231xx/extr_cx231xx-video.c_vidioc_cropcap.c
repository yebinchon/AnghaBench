
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int numerator; int denominator; } ;
struct TYPE_3__ {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_cropcap {scalar_t__ type; TYPE_2__ pixelaspect; TYPE_1__ bounds; TYPE_1__ defrect; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int height; int width; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;

__attribute__((used)) static int vidioc_cropcap(struct file *file, void *priv,
     struct v4l2_cropcap *cc)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;

 if (cc->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 cc->bounds.left = 0;
 cc->bounds.top = 0;
 cc->bounds.width = dev->width;
 cc->bounds.height = dev->height;
 cc->defrect = cc->bounds;
 cc->pixelaspect.numerator = 54;
 cc->pixelaspect.denominator = 59;

 return 0;
}
