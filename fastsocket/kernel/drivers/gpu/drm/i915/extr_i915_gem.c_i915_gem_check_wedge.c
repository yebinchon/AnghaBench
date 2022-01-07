
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gpu_error {int dummy; } ;


 int EAGAIN ;
 int EIO ;
 scalar_t__ i915_reset_in_progress (struct i915_gpu_error*) ;
 scalar_t__ i915_terminally_wedged (struct i915_gpu_error*) ;

int
i915_gem_check_wedge(struct i915_gpu_error *error,
       bool interruptible)
{
 if (i915_reset_in_progress(error)) {


  if (!interruptible)
   return -EIO;


  if (i915_terminally_wedged(error))
   return -EIO;

  return -EAGAIN;
 }

 return 0;
}
