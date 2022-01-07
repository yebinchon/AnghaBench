
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct em28xx_fh {scalar_t__ type; int vb_vbiq; int vb_vidq; int resources; struct em28xx* dev; } ;
struct em28xx {int resources; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EINVAL ;
 int EM28XX_RESOURCE_VBI ;
 int EM28XX_RESOURCE_VIDEO ;
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int check_dev (struct em28xx*) ;
 int em28xx_videodbg (char*,struct em28xx_fh*,int,int ,int ) ;
 scalar_t__ res_check (struct em28xx_fh*,int ) ;
 int res_free (struct em28xx_fh*,int ) ;
 int videobuf_streamoff (int *) ;

__attribute__((used)) static int vidioc_streamoff(struct file *file, void *priv,
     enum v4l2_buf_type type)
{
 struct em28xx_fh *fh = priv;
 struct em28xx *dev = fh->dev;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 if (fh->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
     fh->type != V4L2_BUF_TYPE_VBI_CAPTURE)
  return -EINVAL;
 if (type != fh->type)
  return -EINVAL;

 em28xx_videodbg("vidioc_streamoff fh=%p t=%d fh->res=%d dev->res=%d\n",
   fh, type, fh->resources, dev->resources);

 if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  if (res_check(fh, EM28XX_RESOURCE_VIDEO)) {
   videobuf_streamoff(&fh->vb_vidq);
   res_free(fh, EM28XX_RESOURCE_VIDEO);
  }
 } else if (fh->type == V4L2_BUF_TYPE_VBI_CAPTURE) {
  if (res_check(fh, EM28XX_RESOURCE_VBI)) {
   videobuf_streamoff(&fh->vb_vbiq);
   res_free(fh, EM28XX_RESOURCE_VBI);
  }
 }

 return 0;
}
