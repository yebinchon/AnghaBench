
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int intel_gtt_clear_range (unsigned int,unsigned int) ;

__attribute__((used)) static void i915_ggtt_clear_range(struct drm_device *dev,
      unsigned int first_entry,
      unsigned int num_entries)
{
 intel_gtt_clear_range(first_entry, num_entries);
}
