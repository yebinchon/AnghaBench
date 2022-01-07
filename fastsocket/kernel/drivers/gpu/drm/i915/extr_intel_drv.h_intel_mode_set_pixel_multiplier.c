
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int clock; int private_flags; } ;



__attribute__((used)) static inline void
intel_mode_set_pixel_multiplier(struct drm_display_mode *mode,
    int multiplier)
{
 mode->clock *= multiplier;
 mode->private_flags |= multiplier;
}
