
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {int dummy; } ;
struct file {int dummy; } ;
struct au0828_fh {scalar_t__ type; int vb_vbiq; int vb_vidq; struct au0828_dev* dev; } ;
struct au0828_dev {int dummy; } ;


 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int check_dev (struct au0828_dev*) ;
 int videobuf_reqbufs (int *,struct v4l2_requestbuffers*) ;

__attribute__((used)) static int vidioc_reqbufs(struct file *file, void *priv,
     struct v4l2_requestbuffers *rb)
{
 struct au0828_fh *fh = priv;
 struct au0828_dev *dev = fh->dev;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  rc = videobuf_reqbufs(&fh->vb_vidq, rb);
 else if (fh->type == V4L2_BUF_TYPE_VBI_CAPTURE)
  rc = videobuf_reqbufs(&fh->vb_vbiq, rb);

 return rc;
}
