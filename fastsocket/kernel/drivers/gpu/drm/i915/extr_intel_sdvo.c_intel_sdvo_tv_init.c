
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {int connector_type; } ;
struct intel_connector {struct drm_connector base; } ;
struct intel_sdvo_connector {int output_flag; struct intel_connector base; } ;
struct drm_encoder {int encoder_type; } ;
struct TYPE_2__ {int needs_tv_clock; struct drm_encoder base; } ;
struct intel_sdvo {int controlled_output; int is_tv; TYPE_1__ base; } ;


 int DRM_MODE_CONNECTOR_SVIDEO ;
 int DRM_MODE_ENCODER_TVDAC ;
 int GFP_KERNEL ;
 int intel_sdvo_connector_init (struct intel_sdvo_connector*,struct intel_sdvo*) ;
 int intel_sdvo_create_enhance_property (struct intel_sdvo*,struct intel_sdvo_connector*) ;
 int intel_sdvo_destroy (struct drm_connector*) ;
 int intel_sdvo_tv_create_property (struct intel_sdvo*,struct intel_sdvo_connector*,int) ;
 struct intel_sdvo_connector* kzalloc (int,int ) ;

__attribute__((used)) static bool
intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, int type)
{
 struct drm_encoder *encoder = &intel_sdvo->base.base;
 struct drm_connector *connector;
 struct intel_connector *intel_connector;
 struct intel_sdvo_connector *intel_sdvo_connector;

 intel_sdvo_connector = kzalloc(sizeof(struct intel_sdvo_connector), GFP_KERNEL);
 if (!intel_sdvo_connector)
  return 0;

 intel_connector = &intel_sdvo_connector->base;
 connector = &intel_connector->base;
 encoder->encoder_type = DRM_MODE_ENCODER_TVDAC;
 connector->connector_type = DRM_MODE_CONNECTOR_SVIDEO;

 intel_sdvo->controlled_output |= type;
 intel_sdvo_connector->output_flag = type;

 intel_sdvo->is_tv = 1;
 intel_sdvo->base.needs_tv_clock = 1;

 intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo);

 if (!intel_sdvo_tv_create_property(intel_sdvo, intel_sdvo_connector, type))
  goto err;

 if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connector))
  goto err;

 return 1;

err:
 intel_sdvo_destroy(connector);
 return 0;
}
