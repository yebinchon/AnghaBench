
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_hw_context {int dummy; } ;
struct drm_i915_file_private {int context_idr; } ;


 scalar_t__ idr_find (int *,int ) ;

__attribute__((used)) static struct i915_hw_context *
i915_gem_context_get(struct drm_i915_file_private *file_priv, u32 id)
{
 return (struct i915_hw_context *)idr_find(&file_priv->context_idr, id);
}
