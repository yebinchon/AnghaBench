
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ id; } ;
struct drm_encoder {TYPE_1__ base; } ;
struct drm_connector {scalar_t__* encoder_ids; struct drm_encoder* encoder; } ;


 int DRM_CONNECTOR_MAX_ENCODER ;

void drm_mode_connector_detach_encoder(struct drm_connector *connector,
        struct drm_encoder *encoder)
{
 int i;
 for (i = 0; i < DRM_CONNECTOR_MAX_ENCODER; i++) {
  if (connector->encoder_ids[i] == encoder->base.id) {
   connector->encoder_ids[i] = 0;
   if (connector->encoder == encoder)
    connector->encoder = ((void*)0);
   break;
  }
 }
}
