
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ service_set; } ;
struct TYPE_3__ {TYPE_2__ sliced; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct em28xx {int v4l2_dev; } ;


 int EINVAL ;
 int check_dev (struct em28xx*) ;
 int g_sliced_fmt ;
 int v4l2_device_call_all (int *,int ,int ,int ,TYPE_2__*) ;
 int vbi ;

__attribute__((used)) static int vidioc_g_fmt_sliced_vbi_cap(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct em28xx_fh *fh = priv;
 struct em28xx *dev = fh->dev;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 f->fmt.sliced.service_set = 0;
 v4l2_device_call_all(&dev->v4l2_dev, 0, vbi, g_sliced_fmt, &f->fmt.sliced);

 if (f->fmt.sliced.service_set == 0)
  rc = -EINVAL;

 return rc;
}
