
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_set_config {int mode_changed; int fb_changed; } ;
struct drm_mode_set {scalar_t__ x; scalar_t__ y; int * mode; TYPE_2__* crtc; TYPE_1__* fb; int num_connectors; int * connectors; } ;
struct TYPE_4__ {scalar_t__ x; scalar_t__ y; int mode; TYPE_1__* fb; } ;
struct TYPE_3__ {scalar_t__ depth; scalar_t__ bits_per_pixel; } ;


 int DRM_DEBUG_KMS (char*) ;
 int drm_mode_debug_printmodeline (int *) ;
 int drm_mode_equal (int *,int *) ;
 scalar_t__ is_crtc_connector_off (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void
intel_set_config_compute_mode_changes(struct drm_mode_set *set,
          struct intel_set_config *config)
{



 if (set->connectors != ((void*)0) &&
     is_crtc_connector_off(set->crtc, *set->connectors,
      set->num_connectors)) {
   config->mode_changed = 1;
 } else if (set->crtc->fb != set->fb) {

  if (set->crtc->fb == ((void*)0)) {
   DRM_DEBUG_KMS("crtc has no fb, full mode set\n");
   config->mode_changed = 1;
  } else if (set->fb == ((void*)0)) {
   config->mode_changed = 1;
  } else if (set->fb->depth != set->crtc->fb->depth) {
   config->mode_changed = 1;
  } else if (set->fb->bits_per_pixel !=
      set->crtc->fb->bits_per_pixel) {
   config->mode_changed = 1;
  } else {
   config->fb_changed = 1;
  }
 }

 if (set->fb && (set->x != set->crtc->x || set->y != set->crtc->y))
  config->fb_changed = 1;

 if (set->mode && !drm_mode_equal(set->mode, &set->crtc->mode)) {
  DRM_DEBUG_KMS("modes are different, full mode set\n");
  drm_mode_debug_printmodeline(&set->crtc->mode);
  drm_mode_debug_printmodeline(set->mode);
  config->mode_changed = 1;
 }
}
