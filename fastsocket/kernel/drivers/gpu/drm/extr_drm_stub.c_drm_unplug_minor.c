
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_minor {int dummy; } ;


 int drm_sysfs_device_remove (struct drm_minor*) ;

__attribute__((used)) static void drm_unplug_minor(struct drm_minor *minor)
{
 drm_sysfs_device_remove(minor);
}
