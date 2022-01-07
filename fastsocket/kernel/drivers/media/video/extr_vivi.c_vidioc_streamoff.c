
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivi_fh {scalar_t__ type; int vb_vidq; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int videobuf_streamoff (int *) ;

__attribute__((used)) static int vidioc_streamoff(struct file *file, void *priv, enum v4l2_buf_type i)
{
 struct vivi_fh *fh = priv;

 if (fh->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;
 if (i != fh->type)
  return -EINVAL;

 return videobuf_streamoff(&fh->vb_vidq);
}
