
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gpu_error {int reset_queue; } ;


 int DRM_ERROR (char*) ;
 int EIO ;
 scalar_t__ EXIT_COND ;
 int HZ ;
 int wait_event_interruptible_timeout (int ,scalar_t__,int) ;

__attribute__((used)) static int
i915_gem_wait_for_error(struct i915_gpu_error *error)
{
 int ret;



 if ((!i915_reset_in_progress(error) || i915_terminally_wedged(error)))
  return 0;






 ret = wait_event_interruptible_timeout(error->reset_queue,
            (!i915_reset_in_progress(error) || i915_terminally_wedged(error)),
            10*HZ);
 if (ret == 0) {
  DRM_ERROR("Timed out waiting for the gpu reset to complete\n");
  return -EIO;
 } else if (ret < 0) {
  return ret;
 }


 return 0;
}
