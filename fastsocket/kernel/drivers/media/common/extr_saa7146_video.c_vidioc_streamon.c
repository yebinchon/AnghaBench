
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_fh {int vbi_q; int video_q; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int DEB_D (char*) ;
 int EINVAL ;
 int V4L2_BUF_TYPE_VBI_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int video_begin (struct saa7146_fh*) ;
 int videobuf_streamon (int *) ;

__attribute__((used)) static int vidioc_streamon(struct file *file, void *__fh, enum v4l2_buf_type type)
{
 struct saa7146_fh *fh = __fh;
 int err;

 DEB_D(("VIDIOC_STREAMON, type:%d\n", type));

 err = video_begin(fh);
 if (err)
  return err;
 if (type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return videobuf_streamon(&fh->video_q);
 if (type == V4L2_BUF_TYPE_VBI_CAPTURE)
  return videobuf_streamon(&fh->vbi_q);
 return -EINVAL;
}
