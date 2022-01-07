
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct cx23885_fh* private_data; } ;
struct cx23885_fh {int mpegq; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int videobuf_streamon (int *) ;

__attribute__((used)) static int vidioc_streamon(struct file *file, void *priv,
    enum v4l2_buf_type i)
{
 struct cx23885_fh *fh = file->private_data;

 return videobuf_streamon(&fh->mpegq);
}
