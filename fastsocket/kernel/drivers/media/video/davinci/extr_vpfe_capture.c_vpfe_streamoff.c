
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_subdev_info {int grp_id; } ;
struct vpfe_fh {int io_allowed; } ;
struct vpfe_device {int lock; int buffer_queue; int v4l2_dev; struct vpfe_subdev_info* current_subdev; int started; } ;
struct file {struct vpfe_fh* private_data; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EACCES ;
 int EINVAL ;
 int ENOIOCTLCMD ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int debug ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int s_stream ;
 int v4l2_dbg (int,int ,int *,char*) ;
 int v4l2_device_call_until_err (int *,int ,int ,int ,int ) ;
 int v4l2_err (int *,char*) ;
 int video ;
 struct vpfe_device* video_drvdata (struct file*) ;
 int videobuf_streamoff (int *) ;
 int vpfe_detach_irq (struct vpfe_device*) ;
 int vpfe_stop_ccdc_capture (struct vpfe_device*) ;

__attribute__((used)) static int vpfe_streamoff(struct file *file, void *priv,
     enum v4l2_buf_type buf_type)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);
 struct vpfe_fh *fh = file->private_data;
 struct vpfe_subdev_info *sdinfo;
 int ret = 0;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_streamoff\n");

 if (V4L2_BUF_TYPE_VIDEO_CAPTURE != buf_type) {
  v4l2_err(&vpfe_dev->v4l2_dev, "Invalid buf type\n");
  return -EINVAL;
 }


 if (!fh->io_allowed) {
  v4l2_err(&vpfe_dev->v4l2_dev, "fh->io_allowed\n");
  return -EACCES;
 }


 if (!vpfe_dev->started) {
  v4l2_err(&vpfe_dev->v4l2_dev, "device started\n");
  return -EINVAL;
 }

 ret = mutex_lock_interruptible(&vpfe_dev->lock);
 if (ret)
  return ret;

 vpfe_stop_ccdc_capture(vpfe_dev);
 vpfe_detach_irq(vpfe_dev);

 sdinfo = vpfe_dev->current_subdev;
 ret = v4l2_device_call_until_err(&vpfe_dev->v4l2_dev, sdinfo->grp_id,
     video, s_stream, 0);

 if (ret && (ret != -ENOIOCTLCMD))
  v4l2_err(&vpfe_dev->v4l2_dev, "stream off failed in subdev\n");
 ret = videobuf_streamoff(&vpfe_dev->buffer_queue);
 mutex_unlock(&vpfe_dev->lock);
 return ret;
}
