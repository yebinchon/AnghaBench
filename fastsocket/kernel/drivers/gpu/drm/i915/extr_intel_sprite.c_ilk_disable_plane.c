
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_plane {int pipe; } ;
struct drm_plane {struct drm_device* dev; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DVSCNTR (int) ;
 int DVSSCALE (int) ;
 int DVSSURF (int) ;
 int DVS_ENABLE ;
 int I915_MODIFY_DISPBASE (int ,int ) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 struct intel_plane* to_intel_plane (struct drm_plane*) ;

__attribute__((used)) static void
ilk_disable_plane(struct drm_plane *plane)
{
 struct drm_device *dev = plane->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_plane *intel_plane = to_intel_plane(plane);
 int pipe = intel_plane->pipe;

 I915_WRITE(DVSCNTR(pipe), I915_READ(DVSCNTR(pipe)) & ~DVS_ENABLE);

 I915_WRITE(DVSSCALE(pipe), 0);

 I915_MODIFY_DISPBASE(DVSSURF(pipe), 0);
 POSTING_READ(DVSSURF(pipe));
}
