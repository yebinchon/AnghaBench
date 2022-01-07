
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct file {int f_flags; } ;
struct au0828_fh {scalar_t__ type; int vb_vbiq; int vb_vidq; struct au0828_dev* dev; } ;
struct au0828_dev {int greenscreen_detected; } ;


 int O_NONBLOCK ;
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int au0828_analog_stream_reset (struct au0828_dev*) ;
 int check_dev (struct au0828_dev*) ;
 int dprintk (int,char*) ;
 int videobuf_dqbuf (int *,struct v4l2_buffer*,int) ;

__attribute__((used)) static int vidioc_dqbuf(struct file *file, void *priv, struct v4l2_buffer *b)
{
 struct au0828_fh *fh = priv;
 struct au0828_dev *dev = fh->dev;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;



 if (dev->greenscreen_detected == 1) {
  dprintk(1, "Detected green frame.  Resetting stream...\n");
  au0828_analog_stream_reset(dev);
  dev->greenscreen_detected = 0;
 }

 if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  rc = videobuf_dqbuf(&fh->vb_vidq, b, file->f_flags & O_NONBLOCK);
 else if (fh->type == V4L2_BUF_TYPE_VBI_CAPTURE)
  rc = videobuf_dqbuf(&fh->vb_vbiq, b, file->f_flags & O_NONBLOCK);

 return rc;
}
