
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_private {TYPE_1__* info; } ;
typedef enum plane { ____Placeholder_plane } plane ;
struct TYPE_2__ {int gen; } ;


 int DSPADDR (int) ;
 int DSPSURF (int) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;

void intel_flush_display_plane(struct drm_i915_private *dev_priv,
          enum plane plane)
{
 if (dev_priv->info->gen >= 4)
  I915_WRITE(DSPSURF(plane), I915_READ(DSPSURF(plane)));
 else
  I915_WRITE(DSPADDR(plane), I915_READ(DSPADDR(plane)));
}
