
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct em28xx_fh* private_data; } ;
struct em28xx_fh {scalar_t__ type; int vb_vbiq; int vb_vidq; struct em28xx* dev; } ;
struct em28xx {int dummy; } ;
typedef int poll_table ;


 int EM28XX_RESOURCE_VBI ;
 int EM28XX_RESOURCE_VIDEO ;
 unsigned int POLLERR ;
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int check_dev (struct em28xx*) ;
 int res_get (struct em28xx_fh*,int ) ;
 unsigned int videobuf_poll_stream (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int em28xx_v4l2_poll(struct file *filp, poll_table *wait)
{
 struct em28xx_fh *fh = filp->private_data;
 struct em28xx *dev = fh->dev;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  if (!res_get(fh, EM28XX_RESOURCE_VIDEO))
   return POLLERR;
  return videobuf_poll_stream(filp, &fh->vb_vidq, wait);
 } else if (fh->type == V4L2_BUF_TYPE_VBI_CAPTURE) {
  if (!res_get(fh, EM28XX_RESOURCE_VBI))
   return POLLERR;
  return videobuf_poll_stream(filp, &fh->vb_vbiq, wait);
 } else {
  return POLLERR;
 }
}
