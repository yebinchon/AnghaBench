
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_minor {scalar_t__ type; int index; } ;


 int DRM_DEBUG (char*,int ) ;
 scalar_t__ DRM_MINOR_LEGACY ;
 int drm_debugfs_cleanup (struct drm_minor*) ;
 int drm_minors_idr ;
 int drm_proc_cleanup (struct drm_minor*,int ) ;
 int drm_proc_root ;
 int drm_sysfs_device_remove (struct drm_minor*) ;
 int idr_remove (int *,int ) ;
 int kfree (struct drm_minor*) ;

int drm_put_minor(struct drm_minor **minor_p)
{
 struct drm_minor *minor = *minor_p;

 DRM_DEBUG("release secondary minor %d\n", minor->index);

 if (minor->type == DRM_MINOR_LEGACY)
  drm_proc_cleanup(minor, drm_proc_root);




 drm_sysfs_device_remove(minor);

 idr_remove(&drm_minors_idr, minor->index);

 kfree(minor);
 *minor_p = ((void*)0);
 return 0;
}
