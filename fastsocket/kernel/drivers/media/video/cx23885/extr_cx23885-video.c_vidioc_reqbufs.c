
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {int dummy; } ;
struct file {int dummy; } ;
struct cx23885_fh {int dummy; } ;


 int get_queue (struct cx23885_fh*) ;
 int videobuf_reqbufs (int ,struct v4l2_requestbuffers*) ;

__attribute__((used)) static int vidioc_reqbufs(struct file *file, void *priv,
 struct v4l2_requestbuffers *p)
{
 struct cx23885_fh *fh = priv;
 return videobuf_reqbufs(get_queue(fh), p);
}
