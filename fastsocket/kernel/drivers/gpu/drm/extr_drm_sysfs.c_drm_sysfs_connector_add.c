
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct drm_device {TYPE_1__* primary; } ;
struct TYPE_9__ {int kobj; int release; int class; int * parent; } ;
struct drm_connector {int connector_type; TYPE_2__ kdev; struct drm_device* dev; } ;
struct TYPE_8__ {int index; int kdev; } ;


 int ARRAY_SIZE (int *) ;
 int BUG_ON (int ) ;
 int DRM_DEBUG (char*,int ) ;
 int DRM_ERROR (char*,int) ;





 int * connector_attrs ;
 int * connector_attrs_opt1 ;
 int dev_set_name (TYPE_2__*,char*,int ,int ) ;
 int device_create_file (TYPE_2__*,int *) ;
 int device_is_registered (TYPE_2__*) ;
 int device_register (TYPE_2__*) ;
 int device_remove_file (TYPE_2__*,int *) ;
 int device_unregister (TYPE_2__*) ;
 int drm_class ;
 int drm_get_connector_name (struct drm_connector*) ;
 int drm_sysfs_device_release ;
 int drm_sysfs_hotplug_event (struct drm_device*) ;
 int edid_attr ;
 int sysfs_create_bin_file (int *,int *) ;

int drm_sysfs_connector_add(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 int attr_cnt = 0;
 int opt_cnt = 0;
 int i;
 int ret;


 BUG_ON(device_is_registered(&connector->kdev));

 connector->kdev.parent = &dev->primary->kdev;
 connector->kdev.class = drm_class;
 connector->kdev.release = drm_sysfs_device_release;

 DRM_DEBUG("adding \"%s\" to sysfs\n",
    drm_get_connector_name(connector));

 dev_set_name(&connector->kdev, "card%d-%s",
       dev->primary->index, drm_get_connector_name(connector));
 ret = device_register(&connector->kdev);

 if (ret) {
  DRM_ERROR("failed to register connector device: %d\n", ret);
  goto out;
 }



 for (attr_cnt = 0; attr_cnt < ARRAY_SIZE(connector_attrs); attr_cnt++) {
  ret = device_create_file(&connector->kdev, &connector_attrs[attr_cnt]);
  if (ret)
   goto err_out_files;
 }






 switch (connector->connector_type) {
  case 130:
  case 131:
  case 129:
  case 132:
  case 128:
   for (opt_cnt = 0; opt_cnt < ARRAY_SIZE(connector_attrs_opt1); opt_cnt++) {
    ret = device_create_file(&connector->kdev, &connector_attrs_opt1[opt_cnt]);
    if (ret)
     goto err_out_files;
   }
   break;
  default:
   break;
 }

 ret = sysfs_create_bin_file(&connector->kdev.kobj, &edid_attr);
 if (ret)
  goto err_out_files;


 drm_sysfs_hotplug_event(dev);

 return 0;

err_out_files:
 for (i = 0; i < opt_cnt; i++)
  device_remove_file(&connector->kdev, &connector_attrs_opt1[i]);
 for (i = 0; i < attr_cnt; i++)
  device_remove_file(&connector->kdev, &connector_attrs[i]);
 device_unregister(&connector->kdev);

out:
 return ret;
}
