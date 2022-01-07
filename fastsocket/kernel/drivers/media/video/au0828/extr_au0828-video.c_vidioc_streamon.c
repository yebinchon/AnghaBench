
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct au0828_fh {int type; int vb_vbiq; int vb_vidq; int resources; struct au0828_dev* dev; } ;
struct au0828_dev {int vid_timeout_running; int vbi_timeout_running; int vbi_timeout; int vid_timeout; int v4l2_dev; int resources; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EBUSY ;
 int EINVAL ;
 int HZ ;
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int au0828_analog_stream_enable (struct au0828_dev*) ;
 int check_dev (struct au0828_dev*) ;
 int dprintk (int,char*,struct au0828_fh*,int,int ,int ) ;
 int get_ressource (struct au0828_fh*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int res_get (struct au0828_fh*,int ) ;
 int s_stream ;
 scalar_t__ unlikely (int) ;
 int v4l2_device_call_all (int *,int ,int ,int ,int) ;
 int video ;
 int videobuf_streamon (int *) ;

__attribute__((used)) static int vidioc_streamon(struct file *file, void *priv,
      enum v4l2_buf_type type)
{
 struct au0828_fh *fh = priv;
 struct au0828_dev *dev = fh->dev;
 int rc = -EINVAL;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 if (unlikely(type != fh->type))
  return -EINVAL;

 dprintk(1, "vidioc_streamon fh=%p t=%d fh->res=%d dev->res=%d\n",
  fh, type, fh->resources, dev->resources);

 if (unlikely(!res_get(fh, get_ressource(fh))))
  return -EBUSY;

 if (type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  au0828_analog_stream_enable(dev);
  v4l2_device_call_all(&dev->v4l2_dev, 0, video, s_stream, 1);
 }

 if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  rc = videobuf_streamon(&fh->vb_vidq);
  dev->vid_timeout_running = 1;
  mod_timer(&dev->vid_timeout, jiffies + (HZ / 10));
 } else if (fh->type == V4L2_BUF_TYPE_VBI_CAPTURE) {
  rc = videobuf_streamon(&fh->vb_vbiq);
  dev->vbi_timeout_running = 1;
  mod_timer(&dev->vbi_timeout, jiffies + (HZ / 10));
 }

 return rc;
}
