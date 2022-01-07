
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_encoder_cmd {int cmd; int flags; int raw; } ;
struct hdpvr_fh {struct hdpvr_device* dev; } ;
struct hdpvr_device {int io_mutex; int v4l2_dev; } ;
struct file {struct hdpvr_fh* private_data; } ;


 int EINVAL ;
 int MSG_INFO ;


 int hdpvr_debug ;
 int hdpvr_start_streaming (struct hdpvr_device*) ;
 int hdpvr_stop_streaming (struct hdpvr_device*) ;
 int memset (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_dbg (int ,int ,int *,char*,int) ;

__attribute__((used)) static int vidioc_encoder_cmd(struct file *filp, void *priv,
          struct v4l2_encoder_cmd *a)
{
 struct hdpvr_fh *fh = filp->private_data;
 struct hdpvr_device *dev = fh->dev;
 int res;

 mutex_lock(&dev->io_mutex);

 memset(&a->raw, 0, sizeof(a->raw));
 switch (a->cmd) {
 case 129:
  a->flags = 0;
  res = hdpvr_start_streaming(dev);
  break;
 case 128:
  res = hdpvr_stop_streaming(dev);
  break;
 default:
  v4l2_dbg(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
    "Unsupported encoder cmd %d\n", a->cmd);
  res = -EINVAL;
 }
 mutex_unlock(&dev->io_mutex);
 return res;
}
