
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_object {int dummy; } ;
struct drm_encoder {int encoder_type; } ;
struct drm_connector {scalar_t__* encoder_ids; int dev; } ;


 int DRM_CONNECTOR_MAX_ENCODER ;
 int DRM_MODE_OBJECT_ENCODER ;
 struct drm_mode_object* drm_mode_object_find (int ,scalar_t__,int ) ;
 struct drm_encoder* obj_to_encoder (struct drm_mode_object*) ;

__attribute__((used)) static struct drm_encoder *radeon_find_encoder(struct drm_connector *connector, int encoder_type)
{
 struct drm_mode_object *obj;
 struct drm_encoder *encoder;
 int i;

 for (i = 0; i < DRM_CONNECTOR_MAX_ENCODER; i++) {
  if (connector->encoder_ids[i] == 0)
   break;

  obj = drm_mode_object_find(connector->dev, connector->encoder_ids[i], DRM_MODE_OBJECT_ENCODER);
  if (!obj)
   continue;

  encoder = obj_to_encoder(obj);
  if (encoder->encoder_type == encoder_type)
   return encoder;
 }
 return ((void*)0);
}
