
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nv17_tv_encoder {int tv_norm; int select_subconnector; int subconnector; int flicker; int saturation; int hue; int overscan; } ;
struct nouveau_drm {int dummy; } ;
struct drm_mode_config {int tv_overscan_property; int tv_hue_property; int tv_saturation_property; int tv_flicker_reduction_property; int tv_mode_property; int tv_subconnector_property; int tv_select_subconnector_property; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct drm_mode_config mode_config; } ;
struct drm_connector {int base; } ;
struct TYPE_3__ {scalar_t__ has_component_output; } ;
struct dcb_output {TYPE_1__ tvconf; } ;
struct TYPE_4__ {struct dcb_output* dcb; } ;


 int NUM_LD_TV_NORMS ;
 int NUM_TV_NORMS ;
 int NV_WARN (struct nouveau_drm*,char*,scalar_t__) ;
 int drm_mode_create_tv_properties (struct drm_device*,int,int *) ;
 int drm_object_attach_property (int *,int ,int) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 TYPE_2__* nouveau_encoder (struct drm_encoder*) ;
 scalar_t__ nouveau_tv_norm ;
 int * nv17_tv_norm_names ;
 int strcmp (int ,scalar_t__) ;
 struct nv17_tv_encoder* to_tv_enc (struct drm_encoder*) ;

__attribute__((used)) static int nv17_tv_create_resources(struct drm_encoder *encoder,
        struct drm_connector *connector)
{
 struct drm_device *dev = encoder->dev;
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct drm_mode_config *conf = &dev->mode_config;
 struct nv17_tv_encoder *tv_enc = to_tv_enc(encoder);
 struct dcb_output *dcb = nouveau_encoder(encoder)->dcb;
 int num_tv_norms = dcb->tvconf.has_component_output ? NUM_TV_NORMS :
       NUM_LD_TV_NORMS;
 int i;

 if (nouveau_tv_norm) {
  for (i = 0; i < num_tv_norms; i++) {
   if (!strcmp(nv17_tv_norm_names[i], nouveau_tv_norm)) {
    tv_enc->tv_norm = i;
    break;
   }
  }

  if (i == num_tv_norms)
   NV_WARN(drm, "Invalid TV norm setting \"%s\"\n",
    nouveau_tv_norm);
 }

 drm_mode_create_tv_properties(dev, num_tv_norms, nv17_tv_norm_names);

 drm_object_attach_property(&connector->base,
     conf->tv_select_subconnector_property,
     tv_enc->select_subconnector);
 drm_object_attach_property(&connector->base,
     conf->tv_subconnector_property,
     tv_enc->subconnector);
 drm_object_attach_property(&connector->base,
     conf->tv_mode_property,
     tv_enc->tv_norm);
 drm_object_attach_property(&connector->base,
     conf->tv_flicker_reduction_property,
     tv_enc->flicker);
 drm_object_attach_property(&connector->base,
     conf->tv_saturation_property,
     tv_enc->saturation);
 drm_object_attach_property(&connector->base,
     conf->tv_hue_property,
     tv_enc->hue);
 drm_object_attach_property(&connector->base,
     conf->tv_overscan_property,
     tv_enc->overscan);

 return 0;
}
