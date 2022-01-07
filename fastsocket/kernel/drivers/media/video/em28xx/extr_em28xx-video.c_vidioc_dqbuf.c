
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct file {int f_flags; } ;
struct em28xx_fh {scalar_t__ type; int vb_vbiq; int vb_vidq; struct em28xx* dev; } ;
struct em28xx {int dummy; } ;


 int O_NONBLOCK ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int check_dev (struct em28xx*) ;
 int videobuf_dqbuf (int *,struct v4l2_buffer*,int) ;

__attribute__((used)) static int vidioc_dqbuf(struct file *file, void *priv, struct v4l2_buffer *b)
{
 struct em28xx_fh *fh = priv;
 struct em28xx *dev = fh->dev;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return videobuf_dqbuf(&fh->vb_vidq, b, file->f_flags &
          O_NONBLOCK);
 else
  return videobuf_dqbuf(&fh->vb_vbiq, b, file->f_flags &
          O_NONBLOCK);
}
