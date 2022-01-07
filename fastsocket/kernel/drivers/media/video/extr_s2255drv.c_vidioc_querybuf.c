
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct s2255_fh {int vb_vidq; } ;
struct file {int dummy; } ;


 int videobuf_querybuf (int *,struct v4l2_buffer*) ;

__attribute__((used)) static int vidioc_querybuf(struct file *file, void *priv, struct v4l2_buffer *p)
{
 int rc;
 struct s2255_fh *fh = priv;
 rc = videobuf_querybuf(&fh->vb_vidq, p);
 return rc;
}
