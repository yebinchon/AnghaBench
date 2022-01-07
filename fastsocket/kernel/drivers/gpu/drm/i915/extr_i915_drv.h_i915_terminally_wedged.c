
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gpu_error {int reset_counter; } ;


 scalar_t__ I915_WEDGED ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline bool i915_terminally_wedged(struct i915_gpu_error *error)
{
 return atomic_read(&error->reset_counter) == I915_WEDGED;
}
