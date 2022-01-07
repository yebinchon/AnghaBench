
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct drm_crtc* crtc; } ;
struct TYPE_8__ {int connectors_active; TYPE_1__ base; } ;
struct TYPE_9__ {TYPE_2__* dev_ops; } ;
struct intel_dvo {TYPE_3__ base; TYPE_4__ dev; } ;
struct drm_crtc {int dummy; } ;
struct drm_connector {int dpms; int dev; } ;
struct TYPE_7__ {int (* dpms ) (TYPE_4__*,int) ;} ;


 int DRM_MODE_DPMS_OFF ;
 int DRM_MODE_DPMS_ON ;
 struct intel_dvo* intel_attached_dvo (struct drm_connector*) ;
 int intel_crtc_update_dpms (struct drm_crtc*) ;
 int intel_modeset_check_state (int ) ;
 int stub1 (TYPE_4__*,int) ;
 int stub2 (TYPE_4__*,int) ;

__attribute__((used)) static void intel_dvo_dpms(struct drm_connector *connector, int mode)
{
 struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
 struct drm_crtc *crtc;


 if (mode != DRM_MODE_DPMS_ON)
  mode = DRM_MODE_DPMS_OFF;

 if (mode == connector->dpms)
  return;

 connector->dpms = mode;


 crtc = intel_dvo->base.base.crtc;
 if (!crtc) {
  intel_dvo->base.connectors_active = 0;
  return;
 }

 if (mode == DRM_MODE_DPMS_ON) {
  intel_dvo->base.connectors_active = 1;

  intel_crtc_update_dpms(crtc);

  intel_dvo->dev.dev_ops->dpms(&intel_dvo->dev, 1);
 } else {
  intel_dvo->dev.dev_ops->dpms(&intel_dvo->dev, 0);

  intel_dvo->base.connectors_active = 0;

  intel_crtc_update_dpms(crtc);
 }

 intel_modeset_check_state(connector->dev);
}
