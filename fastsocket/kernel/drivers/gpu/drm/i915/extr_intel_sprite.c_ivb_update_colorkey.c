
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_plane {int pipe; } ;
struct drm_plane {struct drm_device* dev; } ;
struct drm_intel_sprite_colorkey {int min_value; int max_value; int channel_mask; int flags; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int I915_READ (int ) ;
 int I915_SET_COLORKEY_DESTINATION ;
 int I915_SET_COLORKEY_SOURCE ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int SPRCTL (int ) ;
 int SPRITE_DEST_KEY ;
 int SPRITE_SOURCE_KEY ;
 int SPRKEYMAX (int ) ;
 int SPRKEYMSK (int ) ;
 int SPRKEYVAL (int ) ;
 struct intel_plane* to_intel_plane (struct drm_plane*) ;

__attribute__((used)) static int
ivb_update_colorkey(struct drm_plane *plane,
      struct drm_intel_sprite_colorkey *key)
{
 struct drm_device *dev = plane->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_plane *intel_plane;
 u32 sprctl;
 int ret = 0;

 intel_plane = to_intel_plane(plane);

 I915_WRITE(SPRKEYVAL(intel_plane->pipe), key->min_value);
 I915_WRITE(SPRKEYMAX(intel_plane->pipe), key->max_value);
 I915_WRITE(SPRKEYMSK(intel_plane->pipe), key->channel_mask);

 sprctl = I915_READ(SPRCTL(intel_plane->pipe));
 sprctl &= ~(SPRITE_SOURCE_KEY | SPRITE_DEST_KEY);
 if (key->flags & I915_SET_COLORKEY_DESTINATION)
  sprctl |= SPRITE_DEST_KEY;
 else if (key->flags & I915_SET_COLORKEY_SOURCE)
  sprctl |= SPRITE_SOURCE_KEY;
 I915_WRITE(SPRCTL(intel_plane->pipe), sprctl);

 POSTING_READ(SPRKEYMSK(intel_plane->pipe));

 return ret;
}
