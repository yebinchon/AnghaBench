
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef struct file_operations {int (* open ) (struct inode*,struct file*) ;} const file_operations ;
struct file {struct file_operations const* f_op; } ;
struct drm_minor {struct drm_device* dev; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {struct file_operations const* fops; } ;


 int DRM_DEBUG (char*) ;
 int ENODEV ;
 scalar_t__ drm_device_is_unplugged (struct drm_device*) ;
 int drm_global_mutex ;
 int drm_minors_idr ;
 void* fops_get (struct file_operations const*) ;
 int fops_put (struct file_operations const*) ;
 struct drm_minor* idr_find (int *,int) ;
 int iminor (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct inode*,struct file*) ;

int drm_stub_open(struct inode *inode, struct file *filp)
{
 struct drm_device *dev = ((void*)0);
 struct drm_minor *minor;
 int minor_id = iminor(inode);
 int err = -ENODEV;
 const struct file_operations *old_fops;

 DRM_DEBUG("\n");

 mutex_lock(&drm_global_mutex);
 minor = idr_find(&drm_minors_idr, minor_id);
 if (!minor)
  goto out;

 if (!(dev = minor->dev))
  goto out;

 if (drm_device_is_unplugged(dev))
  goto out;

 old_fops = filp->f_op;
 filp->f_op = fops_get(dev->driver->fops);
 if (filp->f_op == ((void*)0)) {
  filp->f_op = old_fops;
  goto out;
 }
 if (filp->f_op->open && (err = filp->f_op->open(inode, filp))) {
  fops_put(filp->f_op);
  filp->f_op = fops_get(old_fops);
 }
 fops_put(old_fops);

out:
 mutex_unlock(&drm_global_mutex);
 return err;
}
