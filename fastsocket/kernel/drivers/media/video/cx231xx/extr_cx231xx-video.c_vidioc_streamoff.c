
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cx231xx_fh {scalar_t__ type; int vb_vidq; struct cx231xx* dev; } ;
struct cx231xx {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int check_dev (struct cx231xx*) ;
 int cx25840_call (struct cx231xx*,int ,int ,int ) ;
 int res_free (struct cx231xx_fh*) ;
 int s_stream ;
 int video ;
 int videobuf_streamoff (int *) ;

__attribute__((used)) static int vidioc_streamoff(struct file *file, void *priv,
       enum v4l2_buf_type type)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 if ((fh->type != V4L2_BUF_TYPE_VIDEO_CAPTURE) &&
     (fh->type != V4L2_BUF_TYPE_VBI_CAPTURE))
  return -EINVAL;
 if (type != fh->type)
  return -EINVAL;

 cx25840_call(dev, video, s_stream, 0);

 videobuf_streamoff(&fh->vb_vidq);
 res_free(fh);

 return 0;
}
