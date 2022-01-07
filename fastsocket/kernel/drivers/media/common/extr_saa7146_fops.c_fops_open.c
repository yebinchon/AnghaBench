
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct video_device {scalar_t__ vfl_type; } ;
struct saa7146_fh {int type; struct saa7146_dev* dev; } ;
struct saa7146_dev {TYPE_3__* ext; TYPE_2__* ext_vv_data; } ;
struct file {struct saa7146_fh* private_data; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_10__ {int (* open ) (struct saa7146_dev*,struct file*) ;} ;
struct TYPE_9__ {int (* open ) (struct saa7146_dev*,struct file*) ;} ;
struct TYPE_8__ {int module; } ;
struct TYPE_6__ {int (* open ) (struct file*) ;} ;
struct TYPE_7__ {int capabilities; TYPE_1__ vbi_fops; } ;


 int DEB_D (char*) ;
 int DEB_EE (char*) ;
 int DEB_S (char*) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_VBI_CAPTURE ;
 scalar_t__ VFL_TYPE_GRABBER ;
 int kfree (struct saa7146_fh*) ;
 struct saa7146_fh* kzalloc (int,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int saa7146_devices_lock ;
 TYPE_5__ saa7146_vbi_uops ;
 TYPE_4__ saa7146_video_uops ;
 int stub1 (struct saa7146_dev*,struct file*) ;
 int stub2 (struct file*) ;
 int stub3 (struct saa7146_dev*,struct file*) ;
 scalar_t__ try_module_get (int ) ;
 struct video_device* video_devdata (struct file*) ;
 int video_device_node_name (struct video_device*) ;
 struct saa7146_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int fops_open(struct file *file)
{
 struct video_device *vdev = video_devdata(file);
 struct saa7146_dev *dev = video_drvdata(file);
 struct saa7146_fh *fh = ((void*)0);
 int result = 0;

 enum v4l2_buf_type type;

 DEB_EE(("file:%p, dev:%s\n", file, video_device_node_name(vdev)));

 if (mutex_lock_interruptible(&saa7146_devices_lock))
  return -ERESTARTSYS;

 DEB_D(("using: %p\n",dev));

 type = vdev->vfl_type == VFL_TYPE_GRABBER
      ? V4L2_BUF_TYPE_VIDEO_CAPTURE
      : V4L2_BUF_TYPE_VBI_CAPTURE;


 if( ((void*)0) == dev->ext ) {
  DEB_S(("no extension registered for this device.\n"));
  result = -ENODEV;
  goto out;
 }


 fh = kzalloc(sizeof(*fh),GFP_KERNEL);
 if (((void*)0) == fh) {
  DEB_S(("cannot allocate memory for per open data.\n"));
  result = -ENOMEM;
  goto out;
 }

 file->private_data = fh;
 fh->dev = dev;
 fh->type = type;

 if( fh->type == V4L2_BUF_TYPE_VBI_CAPTURE) {
  DEB_S(("initializing vbi...\n"));
  if (dev->ext_vv_data->capabilities & V4L2_CAP_VBI_CAPTURE)
   result = saa7146_vbi_uops.open(dev,file);
  if (dev->ext_vv_data->vbi_fops.open)
   dev->ext_vv_data->vbi_fops.open(file);
 } else {
  DEB_S(("initializing video...\n"));
  result = saa7146_video_uops.open(dev,file);
 }

 if (0 != result) {
  goto out;
 }

 if( 0 == try_module_get(dev->ext->module)) {
  result = -EINVAL;
  goto out;
 }

 result = 0;
out:
 if (fh && result != 0) {
  kfree(fh);
  file->private_data = ((void*)0);
 }
 mutex_unlock(&saa7146_devices_lock);
 return result;
}
