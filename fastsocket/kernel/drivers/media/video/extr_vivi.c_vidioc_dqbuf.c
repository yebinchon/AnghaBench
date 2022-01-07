
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivi_fh {int vb_vidq; } ;
struct v4l2_buffer {int dummy; } ;
struct file {int f_flags; } ;


 int O_NONBLOCK ;
 int videobuf_dqbuf (int *,struct v4l2_buffer*,int) ;

__attribute__((used)) static int vidioc_dqbuf(struct file *file, void *priv, struct v4l2_buffer *p)
{
 struct vivi_fh *fh = priv;

 return (videobuf_dqbuf(&fh->vb_vidq, p,
    file->f_flags & O_NONBLOCK));
}
