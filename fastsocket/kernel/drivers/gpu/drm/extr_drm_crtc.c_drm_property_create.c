
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct drm_property {int flags; int num_values; char* name; struct drm_property* values; int head; int enum_blob_list; int base; } ;
struct TYPE_2__ {int property_list; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int DRM_MODE_OBJECT_PROPERTY ;
 int DRM_PROP_NAME_LEN ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int drm_mode_object_get (struct drm_device*,int *,int ) ;
 int kfree (struct drm_property*) ;
 void* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int strncpy (char*,char const*,int) ;

struct drm_property *drm_property_create(struct drm_device *dev, int flags,
      const char *name, int num_values)
{
 struct drm_property *property = ((void*)0);
 int ret;

 property = kzalloc(sizeof(struct drm_property), GFP_KERNEL);
 if (!property)
  return ((void*)0);

 if (num_values) {
  property->values = kzalloc(sizeof(uint64_t)*num_values, GFP_KERNEL);
  if (!property->values)
   goto fail;
 }

 ret = drm_mode_object_get(dev, &property->base, DRM_MODE_OBJECT_PROPERTY);
 if (ret)
  goto fail;

 property->flags = flags;
 property->num_values = num_values;
 INIT_LIST_HEAD(&property->enum_blob_list);

 if (name) {
  strncpy(property->name, name, DRM_PROP_NAME_LEN);
  property->name[DRM_PROP_NAME_LEN-1] = '\0';
 }

 list_add_tail(&property->head, &dev->mode_config.property_list);
 return property;
fail:
 kfree(property->values);
 kfree(property);
 return ((void*)0);
}
