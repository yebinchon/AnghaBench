
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct file {int f_flags; } ;
struct cx23885_fh {int mpegq; } ;


 int O_NONBLOCK ;
 int videobuf_dqbuf (int *,struct v4l2_buffer*,int) ;

__attribute__((used)) static int vidioc_dqbuf(struct file *file, void *priv, struct v4l2_buffer *b)
{
 struct cx23885_fh *fh = priv;

 return videobuf_dqbuf(&fh->mpegq, b, file->f_flags & O_NONBLOCK);
}
