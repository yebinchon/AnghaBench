
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {scalar_t__ type; } ;
struct saa7146_fh {int vbi_q; int video_q; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int videobuf_reqbufs (int *,struct v4l2_requestbuffers*) ;

__attribute__((used)) static int vidioc_reqbufs(struct file *file, void *__fh, struct v4l2_requestbuffers *b)
{
 struct saa7146_fh *fh = __fh;

 if (b->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return videobuf_reqbufs(&fh->video_q, b);
 if (b->type == V4L2_BUF_TYPE_VBI_CAPTURE)
  return videobuf_reqbufs(&fh->vbi_q, b);
 return -EINVAL;
}
