
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {int * dev_private; } ;
struct TYPE_2__ {int pipe; } ;
typedef TYPE_1__ drm_i915_vblank_pipe_t ;
typedef int drm_i915_private_t ;


 int DRIVER_MODESET ;
 int DRM_ERROR (char*) ;
 int DRM_I915_VBLANK_PIPE_A ;
 int DRM_I915_VBLANK_PIPE_B ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;

__attribute__((used)) static int i915_vblank_pipe_get(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 drm_i915_vblank_pipe_t *pipe = data;

 if (drm_core_check_feature(dev, DRIVER_MODESET))
  return -ENODEV;

 if (!dev_priv) {
  DRM_ERROR("called with no initialization\n");
  return -EINVAL;
 }

 pipe->pipe = DRM_I915_VBLANK_PIPE_A | DRM_I915_VBLANK_PIPE_B;

 return 0;
}
