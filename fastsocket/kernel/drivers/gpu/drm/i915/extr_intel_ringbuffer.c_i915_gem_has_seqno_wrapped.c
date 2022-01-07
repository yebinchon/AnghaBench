
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_i915_private {scalar_t__ last_seqno; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;



__attribute__((used)) static inline bool i915_gem_has_seqno_wrapped(struct drm_device *dev,
           u32 seqno)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 return dev_priv->last_seqno < seqno;
}
