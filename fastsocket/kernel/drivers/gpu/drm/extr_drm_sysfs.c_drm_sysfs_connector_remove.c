
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * parent; int kobj; } ;
struct drm_connector {TYPE_1__ kdev; } ;


 int ARRAY_SIZE (int *) ;
 int DRM_DEBUG (char*,int ) ;
 int * connector_attrs ;
 int device_remove_file (TYPE_1__*,int *) ;
 int device_unregister (TYPE_1__*) ;
 int drm_get_connector_name (struct drm_connector*) ;
 int edid_attr ;
 int sysfs_remove_bin_file (int *,int *) ;

void drm_sysfs_connector_remove(struct drm_connector *connector)
{
 int i;

 if (!connector->kdev.parent)
  return;
 DRM_DEBUG("removing \"%s\" from sysfs\n",
    drm_get_connector_name(connector));

 for (i = 0; i < ARRAY_SIZE(connector_attrs); i++)
  device_remove_file(&connector->kdev, &connector_attrs[i]);
 sysfs_remove_bin_file(&connector->kdev.kobj, &edid_attr);
 device_unregister(&connector->kdev);
 connector->kdev.parent = ((void*)0);
}
