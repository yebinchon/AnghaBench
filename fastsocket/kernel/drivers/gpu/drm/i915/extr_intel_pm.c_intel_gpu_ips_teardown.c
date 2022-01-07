
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * i915_mch_dev ;
 int mchdev_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void intel_gpu_ips_teardown(void)
{
 spin_lock_irq(&mchdev_lock);
 i915_mch_dev = ((void*)0);
 spin_unlock_irq(&mchdev_lock);
}
