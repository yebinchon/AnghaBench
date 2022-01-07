
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_property_blob {int length; int head; int data; int base; } ;
struct TYPE_2__ {int property_blob_list; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int DRM_MODE_OBJECT_BLOB ;
 int GFP_KERNEL ;
 int drm_mode_object_get (struct drm_device*,int *,int ) ;
 int kfree (struct drm_property_blob*) ;
 struct drm_property_blob* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,void*,int) ;

__attribute__((used)) static struct drm_property_blob *drm_property_create_blob(struct drm_device *dev, int length,
         void *data)
{
 struct drm_property_blob *blob;
 int ret;

 if (!length || !data)
  return ((void*)0);

 blob = kzalloc(sizeof(struct drm_property_blob)+length, GFP_KERNEL);
 if (!blob)
  return ((void*)0);

 ret = drm_mode_object_get(dev, &blob->base, DRM_MODE_OBJECT_BLOB);
 if (ret) {
  kfree(blob);
  return ((void*)0);
 }

 blob->length = length;

 memcpy(blob->data, data, length);

 list_add_tail(&blob->head, &dev->mode_config.property_blob_list);
 return blob;
}
