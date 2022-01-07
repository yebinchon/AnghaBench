
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct file {struct cx23885_fh* private_data; } ;
struct cx23885_fh {int mpegq; } ;


 int videobuf_querybuf (int *,struct v4l2_buffer*) ;

__attribute__((used)) static int vidioc_querybuf(struct file *file, void *priv,
    struct v4l2_buffer *p)
{
 struct cx23885_fh *fh = file->private_data;

 return videobuf_querybuf(&fh->mpegq, p);
}
