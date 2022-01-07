
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {scalar_t__ is_atom_bios; } ;
struct drm_mode_object {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector_helper_funcs {struct drm_encoder* (* best_encoder ) (struct drm_connector*) ;} ;
struct drm_connector {scalar_t__* encoder_ids; struct drm_device* dev; struct drm_connector_helper_funcs* helper_private; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int DRM_CONNECTOR_MAX_ENCODER ;
 int DRM_MODE_OBJECT_ENCODER ;
 int connector_status_connected ;
 struct drm_mode_object* drm_mode_object_find (struct drm_device*,scalar_t__,int ) ;
 struct drm_encoder* obj_to_encoder (struct drm_mode_object*) ;
 int radeon_atombios_connected_scratch_regs (struct drm_connector*,struct drm_encoder*,int) ;
 int radeon_combios_connected_scratch_regs (struct drm_connector*,struct drm_encoder*,int) ;
 struct drm_encoder* stub1 (struct drm_connector*) ;

__attribute__((used)) static void
radeon_connector_update_scratch_regs(struct drm_connector *connector, enum drm_connector_status status)
{
 struct drm_device *dev = connector->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct drm_encoder *best_encoder = ((void*)0);
 struct drm_encoder *encoder = ((void*)0);
 struct drm_connector_helper_funcs *connector_funcs = connector->helper_private;
 struct drm_mode_object *obj;
 bool connected;
 int i;

 best_encoder = connector_funcs->best_encoder(connector);

 for (i = 0; i < DRM_CONNECTOR_MAX_ENCODER; i++) {
  if (connector->encoder_ids[i] == 0)
   break;

  obj = drm_mode_object_find(connector->dev,
        connector->encoder_ids[i],
        DRM_MODE_OBJECT_ENCODER);
  if (!obj)
   continue;

  encoder = obj_to_encoder(obj);

  if ((encoder == best_encoder) && (status == connector_status_connected))
   connected = 1;
  else
   connected = 0;

  if (rdev->is_atom_bios)
   radeon_atombios_connected_scratch_regs(connector, encoder, connected);
  else
   radeon_combios_connected_scratch_regs(connector, encoder, connected);

 }
}
