
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_property {int dummy; } ;
struct drm_i915_private {struct drm_property* force_audio_property; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_connector {int base; struct drm_device* dev; } ;


 int ARRAY_SIZE (int ) ;
 int drm_object_attach_property (int *,struct drm_property*,int ) ;
 struct drm_property* drm_property_create_enum (struct drm_device*,int ,char*,int ,int ) ;
 int force_audio_names ;

void
intel_attach_force_audio_property(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct drm_property *prop;

 prop = dev_priv->force_audio_property;
 if (prop == ((void*)0)) {
  prop = drm_property_create_enum(dev, 0,
        "audio",
        force_audio_names,
        ARRAY_SIZE(force_audio_names));
  if (prop == ((void*)0))
   return;

  dev_priv->force_audio_property = prop;
 }
 drm_object_attach_property(&connector->base, prop, 0);
}
