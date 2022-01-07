
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct saa7146_fh {scalar_t__ type; struct saa7146_dev* dev; } ;
struct saa7146_dev {TYPE_3__* ext; TYPE_2__* ext_vv_data; } ;
struct file {struct saa7146_fh* private_data; } ;
struct TYPE_10__ {int (* release ) (struct saa7146_dev*,struct file*) ;} ;
struct TYPE_9__ {int (* release ) (struct saa7146_dev*,struct file*) ;} ;
struct TYPE_8__ {int module; } ;
struct TYPE_6__ {int (* release ) (struct file*) ;} ;
struct TYPE_7__ {int capabilities; TYPE_1__ vbi_fops; } ;


 int DEB_EE (char*) ;
 int ERESTARTSYS ;
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 int V4L2_CAP_VBI_CAPTURE ;
 int kfree (struct saa7146_fh*) ;
 int module_put (int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int saa7146_devices_lock ;
 TYPE_5__ saa7146_vbi_uops ;
 TYPE_4__ saa7146_video_uops ;
 int stub1 (struct saa7146_dev*,struct file*) ;
 int stub2 (struct file*) ;
 int stub3 (struct saa7146_dev*,struct file*) ;

__attribute__((used)) static int fops_release(struct file *file)
{
 struct saa7146_fh *fh = file->private_data;
 struct saa7146_dev *dev = fh->dev;

 DEB_EE(("file:%p\n", file));

 if (mutex_lock_interruptible(&saa7146_devices_lock))
  return -ERESTARTSYS;

 if( fh->type == V4L2_BUF_TYPE_VBI_CAPTURE) {
  if (dev->ext_vv_data->capabilities & V4L2_CAP_VBI_CAPTURE)
   saa7146_vbi_uops.release(dev,file);
  if (dev->ext_vv_data->vbi_fops.release)
   dev->ext_vv_data->vbi_fops.release(file);
 } else {
  saa7146_video_uops.release(dev,file);
 }

 module_put(dev->ext->module);
 file->private_data = ((void*)0);
 kfree(fh);

 mutex_unlock(&saa7146_devices_lock);

 return 0;
}
