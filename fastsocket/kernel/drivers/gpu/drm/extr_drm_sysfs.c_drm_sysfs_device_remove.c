
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; } ;
struct drm_minor {TYPE_1__ kdev; } ;


 int device_unregister (TYPE_1__*) ;

void drm_sysfs_device_remove(struct drm_minor *minor)
{
 if (minor->kdev.parent)
  device_unregister(&minor->kdev);
 minor->kdev.parent = ((void*)0);
}
