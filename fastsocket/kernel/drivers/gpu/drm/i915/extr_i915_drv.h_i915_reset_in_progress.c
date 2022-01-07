
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gpu_error {int reset_counter; } ;


 int I915_RESET_IN_PROGRESS_FLAG ;
 int atomic_read (int *) ;
 int unlikely (int) ;

__attribute__((used)) static inline bool i915_reset_in_progress(struct i915_gpu_error *error)
{
 return unlikely(atomic_read(&error->reset_counter)
   & I915_RESET_IN_PROGRESS_FLAG);
}
