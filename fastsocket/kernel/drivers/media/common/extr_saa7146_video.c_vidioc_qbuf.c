
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {scalar_t__ type; } ;
struct saa7146_fh {int vbi_q; int video_q; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int videobuf_qbuf (int *,struct v4l2_buffer*) ;

__attribute__((used)) static int vidioc_qbuf(struct file *file, void *__fh, struct v4l2_buffer *buf)
{
 struct saa7146_fh *fh = __fh;

 if (buf->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return videobuf_qbuf(&fh->video_q, buf);
 if (buf->type == V4L2_BUF_TYPE_VBI_CAPTURE)
  return videobuf_qbuf(&fh->vbi_q, buf);
 return -EINVAL;
}
