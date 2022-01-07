
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_hw_ppgtt {int (* insert_entries ) (struct i915_hw_ppgtt*,int ,int,int) ;} ;
struct drm_i915_gem_object {TYPE_1__* gtt_space; int pages; } ;
typedef enum i915_cache_level { ____Placeholder_i915_cache_level } i915_cache_level ;
struct TYPE_2__ {int start; } ;


 int PAGE_SHIFT ;
 int stub1 (struct i915_hw_ppgtt*,int ,int,int) ;

void i915_ppgtt_bind_object(struct i915_hw_ppgtt *ppgtt,
       struct drm_i915_gem_object *obj,
       enum i915_cache_level cache_level)
{
 ppgtt->insert_entries(ppgtt, obj->pages,
         obj->gtt_space->start >> PAGE_SHIFT,
         cache_level);
}
