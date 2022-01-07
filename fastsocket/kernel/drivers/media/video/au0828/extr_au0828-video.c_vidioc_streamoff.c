
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct au0828_fh {scalar_t__ type; int vb_vbiq; int vb_vidq; int resources; struct au0828_dev* dev; } ;
struct au0828_dev {int vbi_timeout; scalar_t__ vbi_timeout_running; int v4l2_dev; int vid_timeout; scalar_t__ vid_timeout_running; int resources; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_2__ {int (* audio_setup ) (struct au0828_dev*,int ) ;} ;


 int AU0828_MAX_INPUT ;
 int AU0828_RESOURCE_VBI ;
 int AU0828_RESOURCE_VIDEO ;
 TYPE_1__ AUVI_INPUT (int) ;
 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int au0828_stream_interrupt (struct au0828_dev*) ;
 int check_dev (struct au0828_dev*) ;
 int del_timer_sync (int *) ;
 int dprintk (int,char*,struct au0828_fh*,int,int ,int ) ;
 int res_free (struct au0828_fh*,int ) ;
 int s_stream ;
 int stub1 (struct au0828_dev*,int ) ;
 int v4l2_device_call_all (int *,int ,int ,int ,int ) ;
 int video ;
 int videobuf_streamoff (int *) ;

__attribute__((used)) static int vidioc_streamoff(struct file *file, void *priv,
       enum v4l2_buf_type type)
{
 struct au0828_fh *fh = priv;
 struct au0828_dev *dev = fh->dev;
 int rc;
 int i;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 if (fh->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
     fh->type != V4L2_BUF_TYPE_VBI_CAPTURE)
  return -EINVAL;
 if (type != fh->type)
  return -EINVAL;

 dprintk(1, "vidioc_streamoff fh=%p t=%d fh->res=%d dev->res=%d\n",
  fh, type, fh->resources, dev->resources);

 if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  dev->vid_timeout_running = 0;
  del_timer_sync(&dev->vid_timeout);

  v4l2_device_call_all(&dev->v4l2_dev, 0, video, s_stream, 0);
  rc = au0828_stream_interrupt(dev);
  if (rc != 0)
   return rc;

  for (i = 0; i < AU0828_MAX_INPUT; i++) {
   if (AUVI_INPUT(i).audio_setup == ((void*)0))
    continue;
   (AUVI_INPUT(i).audio_setup)(dev, 0);
  }

  videobuf_streamoff(&fh->vb_vidq);
  res_free(fh, AU0828_RESOURCE_VIDEO);
 } else if (fh->type == V4L2_BUF_TYPE_VBI_CAPTURE) {
  dev->vbi_timeout_running = 0;
  del_timer_sync(&dev->vbi_timeout);

  videobuf_streamoff(&fh->vb_vbiq);
  res_free(fh, AU0828_RESOURCE_VBI);
 }

 return 0;
}
