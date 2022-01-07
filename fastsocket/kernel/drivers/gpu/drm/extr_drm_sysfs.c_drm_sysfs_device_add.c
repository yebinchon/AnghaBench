
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * type; int devt; int release; int class; int parent; } ;
struct drm_minor {scalar_t__ type; TYPE_2__ kdev; int index; int device; TYPE_1__* dev; } ;
struct TYPE_4__ {int dev; } ;


 int DRM_ERROR (char*,int) ;
 scalar_t__ DRM_MINOR_CONTROL ;
 scalar_t__ DRM_MINOR_RENDER ;
 int dev_set_name (TYPE_2__*,char*,int ) ;
 int device_register (TYPE_2__*) ;
 int drm_class ;
 int drm_sysfs_device_minor ;
 int drm_sysfs_device_release ;

int drm_sysfs_device_add(struct drm_minor *minor)
{
 int err;
 char *minor_str;

 minor->kdev.parent = minor->dev->dev;

 minor->kdev.class = drm_class;
 minor->kdev.release = drm_sysfs_device_release;
 minor->kdev.devt = minor->device;
 minor->kdev.type = &drm_sysfs_device_minor;
 if (minor->type == DRM_MINOR_CONTROL)
  minor_str = "controlD%d";
        else if (minor->type == DRM_MINOR_RENDER)
                minor_str = "renderD%d";
        else
                minor_str = "card%d";

 dev_set_name(&minor->kdev, minor_str, minor->index);

 err = device_register(&minor->kdev);
 if (err) {
  DRM_ERROR("device add failed: %d\n", err);
  goto err_out;
 }

 return 0;

err_out:
 return err;
}
