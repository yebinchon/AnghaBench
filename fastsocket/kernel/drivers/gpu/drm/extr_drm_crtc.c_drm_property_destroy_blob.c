
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_property_blob {int head; int base; } ;
struct drm_device {int dummy; } ;


 int drm_mode_object_put (struct drm_device*,int *) ;
 int kfree (struct drm_property_blob*) ;
 int list_del (int *) ;

__attribute__((used)) static void drm_property_destroy_blob(struct drm_device *dev,
          struct drm_property_blob *blob)
{
 drm_mode_object_put(dev, &blob->base);
 list_del(&blob->head);
 kfree(blob);
}
