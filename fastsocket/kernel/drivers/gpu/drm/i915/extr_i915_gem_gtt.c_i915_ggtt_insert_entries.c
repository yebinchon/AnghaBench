
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct drm_device {int dummy; } ;
typedef enum i915_cache_level { ____Placeholder_i915_cache_level } i915_cache_level ;


 unsigned int AGP_USER_CACHED_MEMORY ;
 unsigned int AGP_USER_MEMORY ;
 int I915_CACHE_NONE ;
 int intel_gtt_insert_sg_entries (struct sg_table*,unsigned int,unsigned int) ;

__attribute__((used)) static void i915_ggtt_insert_entries(struct drm_device *dev,
         struct sg_table *st,
         unsigned int pg_start,
         enum i915_cache_level cache_level)
{
 unsigned int flags = (cache_level == I915_CACHE_NONE) ?
  AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;

 intel_gtt_insert_sg_entries(st, pg_start, flags);

}
