
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int membar_safe (char*) ;
 scalar_t__ penguins_are_doing_time ;
 int printk (char*,int ) ;
 int smp_capture_depth ;
 int smp_capture_registry ;
 int smp_processor_id () ;

void smp_release(void)
{
 if (atomic_dec_and_test(&smp_capture_depth)) {





  penguins_are_doing_time = 0;
  membar_safe("#StoreLoad");
  atomic_dec(&smp_capture_registry);
 }
}
