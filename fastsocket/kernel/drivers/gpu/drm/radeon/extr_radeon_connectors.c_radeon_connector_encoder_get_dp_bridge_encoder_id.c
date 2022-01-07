
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct radeon_encoder {int encoder_id; } ;
struct drm_mode_object {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {scalar_t__* encoder_ids; int dev; } ;


 int DRM_CONNECTOR_MAX_ENCODER ;
 int DRM_MODE_OBJECT_ENCODER ;
 int ENCODER_OBJECT_ID_NONE ;


 struct drm_mode_object* drm_mode_object_find (int ,scalar_t__,int ) ;
 struct drm_encoder* obj_to_encoder (struct drm_mode_object*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

u16 radeon_connector_encoder_get_dp_bridge_encoder_id(struct drm_connector *connector)
{
 struct drm_mode_object *obj;
 struct drm_encoder *encoder;
 struct radeon_encoder *radeon_encoder;
 int i;

 for (i = 0; i < DRM_CONNECTOR_MAX_ENCODER; i++) {
  if (connector->encoder_ids[i] == 0)
   break;

  obj = drm_mode_object_find(connector->dev, connector->encoder_ids[i], DRM_MODE_OBJECT_ENCODER);
  if (!obj)
   continue;

  encoder = obj_to_encoder(obj);
  radeon_encoder = to_radeon_encoder(encoder);

  switch (radeon_encoder->encoder_id) {
  case 128:
  case 129:
   return radeon_encoder->encoder_id;
  default:
   break;
  }
 }

 return ENCODER_OBJECT_ID_NONE;
}
