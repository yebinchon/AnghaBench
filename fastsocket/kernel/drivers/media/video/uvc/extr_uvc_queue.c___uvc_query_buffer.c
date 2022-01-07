
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int flags; } ;
struct uvc_buffer {int state; scalar_t__ vma_use_count; int buf; } ;
 int V4L2_BUF_FLAG_DONE ;
 int V4L2_BUF_FLAG_MAPPED ;
 int V4L2_BUF_FLAG_QUEUED ;
 int memcpy (struct v4l2_buffer*,int *,int) ;

__attribute__((used)) static void __uvc_query_buffer(struct uvc_buffer *buf,
  struct v4l2_buffer *v4l2_buf)
{
 memcpy(v4l2_buf, &buf->buf, sizeof *v4l2_buf);

 if (buf->vma_use_count)
  v4l2_buf->flags |= V4L2_BUF_FLAG_MAPPED;

 switch (buf->state) {
 case 131:
 case 132:
  v4l2_buf->flags |= V4L2_BUF_FLAG_DONE;
  break;
 case 129:
 case 133:
 case 128:
  v4l2_buf->flags |= V4L2_BUF_FLAG_QUEUED;
  break;
 case 130:
 default:
  break;
 }
}
