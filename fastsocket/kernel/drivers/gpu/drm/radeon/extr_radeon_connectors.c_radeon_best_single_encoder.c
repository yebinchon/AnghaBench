
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_object {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int* encoder_ids; int dev; } ;


 int DRM_MODE_OBJECT_ENCODER ;
 struct drm_mode_object* drm_mode_object_find (int ,int,int ) ;
 struct drm_encoder* obj_to_encoder (struct drm_mode_object*) ;

__attribute__((used)) static struct drm_encoder *radeon_best_single_encoder(struct drm_connector *connector)
{
 int enc_id = connector->encoder_ids[0];
 struct drm_mode_object *obj;
 struct drm_encoder *encoder;


 if (enc_id) {
  obj = drm_mode_object_find(connector->dev, enc_id, DRM_MODE_OBJECT_ENCODER);
  if (!obj)
   return ((void*)0);
  encoder = obj_to_encoder(obj);
  return encoder;
 }
 return ((void*)0);
}
