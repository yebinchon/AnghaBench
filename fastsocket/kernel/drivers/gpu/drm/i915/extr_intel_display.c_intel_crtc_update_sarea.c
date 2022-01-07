
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct intel_crtc {int pipe; } ;
struct drm_i915_master_private {TYPE_3__* sarea_priv; } ;
struct drm_device {TYPE_2__* primary; } ;
struct TYPE_8__ {int vdisplay; int hdisplay; } ;
struct drm_crtc {TYPE_4__ mode; struct drm_device* dev; } ;
struct TYPE_7__ {int pipeB_h; int pipeB_w; int pipeA_h; int pipeA_w; } ;
struct TYPE_6__ {TYPE_1__* master; } ;
struct TYPE_5__ {struct drm_i915_master_private* driver_priv; } ;


 int DRM_ERROR (char*,int ) ;
 int pipe_name (int) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static void intel_crtc_update_sarea(struct drm_crtc *crtc,
        bool enabled)
{
 struct drm_device *dev = crtc->dev;
 struct drm_i915_master_private *master_priv;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 int pipe = intel_crtc->pipe;

 if (!dev->primary->master)
  return;

 master_priv = dev->primary->master->driver_priv;
 if (!master_priv->sarea_priv)
  return;

 switch (pipe) {
 case 0:
  master_priv->sarea_priv->pipeA_w = enabled ? crtc->mode.hdisplay : 0;
  master_priv->sarea_priv->pipeA_h = enabled ? crtc->mode.vdisplay : 0;
  break;
 case 1:
  master_priv->sarea_priv->pipeB_w = enabled ? crtc->mode.hdisplay : 0;
  master_priv->sarea_priv->pipeB_h = enabled ? crtc->mode.vdisplay : 0;
  break;
 default:
  DRM_ERROR("Can't update pipe %c in SAREA\n", pipe_name(pipe));
  break;
 }
}
