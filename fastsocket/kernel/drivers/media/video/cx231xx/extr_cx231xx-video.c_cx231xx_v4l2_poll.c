
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {scalar_t__ type; int vb_vidq; struct cx231xx* dev; } ;
struct cx231xx {int dummy; } ;
typedef int poll_table ;


 unsigned int POLLERR ;
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int check_dev (struct cx231xx*) ;
 int res_get (struct cx231xx_fh*) ;
 scalar_t__ unlikely (int) ;
 unsigned int videobuf_poll_stream (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int cx231xx_v4l2_poll(struct file *filp, poll_table *wait)
{
 struct cx231xx_fh *fh = filp->private_data;
 struct cx231xx *dev = fh->dev;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 rc = res_get(fh);

 if (unlikely(rc < 0))
  return POLLERR;

 if ((V4L2_BUF_TYPE_VIDEO_CAPTURE == fh->type) ||
     (V4L2_BUF_TYPE_VBI_CAPTURE == fh->type))
  return videobuf_poll_stream(filp, &fh->vb_vidq, wait);
 else
  return POLLERR;
}
