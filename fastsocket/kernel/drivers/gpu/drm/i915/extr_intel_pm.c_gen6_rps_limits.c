
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int max_delay; int min_delay; } ;
struct drm_i915_private {TYPE_1__ rps; } ;



__attribute__((used)) static u32 gen6_rps_limits(struct drm_i915_private *dev_priv, u8 *val)
{
 u32 limits;

 limits = 0;

 if (*val >= dev_priv->rps.max_delay)
  *val = dev_priv->rps.max_delay;
 limits |= dev_priv->rps.max_delay << 24;







 if (*val <= dev_priv->rps.min_delay) {
  *val = dev_priv->rps.min_delay;
  limits |= dev_priv->rps.min_delay << 16;
 }

 return limits;
}
