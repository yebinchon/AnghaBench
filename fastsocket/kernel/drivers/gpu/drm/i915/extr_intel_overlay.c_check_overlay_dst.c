
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_overlay {TYPE_2__* crtc; } ;
struct drm_intel_overlay_put_image {scalar_t__ dst_x; scalar_t__ dst_width; scalar_t__ dst_y; scalar_t__ dst_height; } ;
struct drm_display_mode {scalar_t__ hdisplay; scalar_t__ vdisplay; } ;
struct TYPE_3__ {struct drm_display_mode mode; } ;
struct TYPE_4__ {TYPE_1__ base; } ;


 int EINVAL ;

__attribute__((used)) static int check_overlay_dst(struct intel_overlay *overlay,
        struct drm_intel_overlay_put_image *rec)
{
 struct drm_display_mode *mode = &overlay->crtc->base.mode;

 if (rec->dst_x < mode->hdisplay &&
     rec->dst_x + rec->dst_width <= mode->hdisplay &&
     rec->dst_y < mode->vdisplay &&
     rec->dst_y + rec->dst_height <= mode->vdisplay)
  return 0;
 else
  return -EINVAL;
}
