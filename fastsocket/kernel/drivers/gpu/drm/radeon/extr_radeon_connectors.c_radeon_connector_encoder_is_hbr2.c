
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_encoder {int caps; } ;
struct drm_mode_object {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {scalar_t__* encoder_ids; int dev; } ;


 int ATOM_ENCODER_CAP_RECORD_HBR2 ;
 int DRM_CONNECTOR_MAX_ENCODER ;
 int DRM_MODE_OBJECT_ENCODER ;
 struct drm_mode_object* drm_mode_object_find (int ,scalar_t__,int ) ;
 struct drm_encoder* obj_to_encoder (struct drm_mode_object*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

bool radeon_connector_encoder_is_hbr2(struct drm_connector *connector)
{
 struct drm_mode_object *obj;
 struct drm_encoder *encoder;
 struct radeon_encoder *radeon_encoder;
 int i;
 bool found = 0;

 for (i = 0; i < DRM_CONNECTOR_MAX_ENCODER; i++) {
  if (connector->encoder_ids[i] == 0)
   break;

  obj = drm_mode_object_find(connector->dev, connector->encoder_ids[i], DRM_MODE_OBJECT_ENCODER);
  if (!obj)
   continue;

  encoder = obj_to_encoder(obj);
  radeon_encoder = to_radeon_encoder(encoder);
  if (radeon_encoder->caps & ATOM_ENCODER_CAP_RECORD_HBR2)
   found = 1;
 }

 return found;
}
