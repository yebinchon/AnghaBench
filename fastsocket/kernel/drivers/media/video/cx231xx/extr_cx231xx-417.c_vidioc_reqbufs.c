
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {int dummy; } ;
struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {int vidq; } ;


 int videobuf_reqbufs (int *,struct v4l2_requestbuffers*) ;

__attribute__((used)) static int vidioc_reqbufs(struct file *file, void *priv,
    struct v4l2_requestbuffers *p)
{
 struct cx231xx_fh *fh = file->private_data;

 return videobuf_reqbufs(&fh->vidq, p);
}
