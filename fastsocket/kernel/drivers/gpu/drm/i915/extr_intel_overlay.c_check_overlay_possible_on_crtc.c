
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_overlay {TYPE_2__* dev; } ;
struct intel_crtc {int pipe; int active; } ;
typedef int drm_i915_private_t ;
struct TYPE_4__ {int * dev_private; } ;
struct TYPE_3__ {int gen; } ;


 int EINVAL ;
 int I915_READ (int ) ;
 TYPE_1__* INTEL_INFO (TYPE_2__*) ;
 int PIPECONF (int ) ;
 int PIPECONF_DOUBLE_WIDE ;
 int PIPECONF_ENABLE ;

__attribute__((used)) static int check_overlay_possible_on_crtc(struct intel_overlay *overlay,
       struct intel_crtc *crtc)
{
 drm_i915_private_t *dev_priv = overlay->dev->dev_private;

 if (!crtc->active)
  return -EINVAL;


 if (INTEL_INFO(overlay->dev)->gen < 4 &&
     (I915_READ(PIPECONF(crtc->pipe)) & (PIPECONF_DOUBLE_WIDE | PIPECONF_ENABLE)) != PIPECONF_ENABLE)
  return -EINVAL;

 return 0;
}
