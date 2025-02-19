
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct intel_set_config {scalar_t__ mode_changed; scalar_t__ fb_changed; } ;
struct drm_mode_set {scalar_t__ num_connectors; TYPE_4__* fb; int y; int x; int * mode; TYPE_3__* crtc; } ;
struct drm_device {int dummy; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_10__ {TYPE_1__ base; } ;
struct TYPE_8__ {int id; } ;
struct TYPE_9__ {TYPE_2__ base; TYPE_4__* fb; int y; int x; int mode; struct drm_device* dev; int helper_private; } ;


 int BUG_ON (int) ;
 int DRM_DEBUG_KMS (char*,...) ;
 int DRM_ERROR (char*,...) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_mode_debug_printmodeline (int *) ;
 int intel_modeset_stage_output_state (struct drm_device*,struct drm_mode_set*,struct intel_set_config*) ;
 int intel_pipe_set_base (TYPE_3__*,int ,int ,TYPE_4__*) ;
 int intel_set_config_compute_mode_changes (struct drm_mode_set*,struct intel_set_config*) ;
 int intel_set_config_free (struct intel_set_config*) ;
 int intel_set_config_restore_state (struct drm_device*,struct intel_set_config*) ;
 int intel_set_config_save_state (struct drm_device*,struct intel_set_config*) ;
 int intel_set_mode (TYPE_3__*,int *,int ,int ,TYPE_4__*) ;
 struct intel_set_config* kzalloc (int,int ) ;

__attribute__((used)) static int intel_crtc_set_config(struct drm_mode_set *set)
{
 struct drm_device *dev;
 struct drm_mode_set save_set;
 struct intel_set_config *config;
 int ret;

 BUG_ON(!set);
 BUG_ON(!set->crtc);
 BUG_ON(!set->crtc->helper_private);


 BUG_ON(!set->mode && set->fb);
 BUG_ON(set->fb && set->num_connectors == 0);

 if (set->fb) {
  DRM_DEBUG_KMS("[CRTC:%d] [FB:%d] #connectors=%d (x y) (%i %i)\n",
    set->crtc->base.id, set->fb->base.id,
    (int)set->num_connectors, set->x, set->y);
 } else {
  DRM_DEBUG_KMS("[CRTC:%d] [NOFB]\n", set->crtc->base.id);
 }

 dev = set->crtc->dev;

 ret = -ENOMEM;
 config = kzalloc(sizeof(*config), GFP_KERNEL);
 if (!config)
  goto out_config;

 ret = intel_set_config_save_state(dev, config);
 if (ret)
  goto out_config;

 save_set.crtc = set->crtc;
 save_set.mode = &set->crtc->mode;
 save_set.x = set->crtc->x;
 save_set.y = set->crtc->y;
 save_set.fb = set->crtc->fb;





 intel_set_config_compute_mode_changes(set, config);

 ret = intel_modeset_stage_output_state(dev, set, config);
 if (ret)
  goto fail;

 if (config->mode_changed) {
  if (set->mode) {
   DRM_DEBUG_KMS("attempting to set mode from"
     " userspace\n");
   drm_mode_debug_printmodeline(set->mode);
  }

  ret = intel_set_mode(set->crtc, set->mode,
         set->x, set->y, set->fb);
  if (ret) {
   DRM_ERROR("failed to set mode on [CRTC:%d], err = %d\n",
      set->crtc->base.id, ret);
   goto fail;
  }
 } else if (config->fb_changed) {
  ret = intel_pipe_set_base(set->crtc,
       set->x, set->y, set->fb);
 }

 intel_set_config_free(config);

 return 0;

fail:
 intel_set_config_restore_state(dev, config);


 if (config->mode_changed &&
     intel_set_mode(save_set.crtc, save_set.mode,
      save_set.x, save_set.y, save_set.fb))
  DRM_ERROR("failed to restore config after modeset failure\n");

out_config:
 intel_set_config_free(config);
 return ret;
}
