
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
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int dummy; } ;


 int EINVAL ;
 int call_all (struct cx231xx*,int ,int ,TYPE_2__*) ;
 int check_dev (struct cx231xx*) ;
 int g_sliced_fmt ;
 int vbi ;

__attribute__((used)) static int vidioc_g_fmt_sliced_vbi_cap(struct file *file, void *priv,
           struct v4l2_format *f)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 f->fmt.sliced.service_set = 0;

 call_all(dev, vbi, g_sliced_fmt, &f->fmt.sliced);

 if (f->fmt.sliced.service_set == 0)
  rc = -EINVAL;

 return rc;
}
