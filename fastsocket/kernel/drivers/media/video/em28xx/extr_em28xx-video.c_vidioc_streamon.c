
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct em28xx_fh {int type; int vb_vbiq; int vb_vidq; int resources; struct em28xx* dev; } ;
struct em28xx {int resources; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int check_dev (struct em28xx*) ;
 int em28xx_videodbg (char*,struct em28xx_fh*,int,int ,int ) ;
 int get_ressource (struct em28xx_fh*) ;
 int res_get (struct em28xx_fh*,int ) ;
 scalar_t__ unlikely (int) ;
 int videobuf_streamon (int *) ;

__attribute__((used)) static int vidioc_streamon(struct file *file, void *priv,
     enum v4l2_buf_type type)
{
 struct em28xx_fh *fh = priv;
 struct em28xx *dev = fh->dev;
 int rc = -EINVAL;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 if (unlikely(type != fh->type))
  return -EINVAL;

 em28xx_videodbg("vidioc_streamon fh=%p t=%d fh->res=%d dev->res=%d\n",
   fh, type, fh->resources, dev->resources);

 if (unlikely(!res_get(fh, get_ressource(fh))))
  return -EBUSY;

 if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  rc = videobuf_streamon(&fh->vb_vidq);
 else if (fh->type == V4L2_BUF_TYPE_VBI_CAPTURE)
  rc = videobuf_streamon(&fh->vb_vbiq);

 return rc;
}
