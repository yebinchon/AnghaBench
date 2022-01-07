
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dtl_enable_mask; } ;


 int FW_FEATURE_SPLPAR ;
 unsigned long __pa (TYPE_1__*) ;
 scalar_t__ firmware_has_feature (int ) ;
 TYPE_1__* get_lppaca () ;
 TYPE_1__* get_slb_shadow () ;
 int hard_smp_processor_id () ;
 int pr_err (char*,int ,int ,int) ;
 int printk (char*,int ,int ) ;
 int smp_processor_id () ;
 int unregister_dtl (int ) ;
 scalar_t__ unregister_slb_shadow (int ,unsigned long) ;
 scalar_t__ unregister_vpa (int ,unsigned long) ;

__attribute__((used)) static void pseries_kexec_cpu_down(int crash_shutdown, int secondary)
{

 if (firmware_has_feature(FW_FEATURE_SPLPAR) && !crash_shutdown) {
  unsigned long addr;
  int ret;

  if (get_lppaca()->dtl_enable_mask) {
   ret = unregister_dtl(hard_smp_processor_id());
   if (ret) {
    pr_err("WARNING: DTL deregistration for cpu "
           "%d (hw %d) failed with %d\n",
           smp_processor_id(),
           hard_smp_processor_id(), ret);
   }
  }

  addr = __pa(get_slb_shadow());
  if (unregister_slb_shadow(hard_smp_processor_id(), addr))
   printk("SLB shadow buffer deregistration of "
          "cpu %u (hw_cpu_id %d) failed\n",
          smp_processor_id(),
          hard_smp_processor_id());

  addr = __pa(get_lppaca());
  if (unregister_vpa(hard_smp_processor_id(), addr)) {
   printk("VPA deregistration of cpu %u (hw_cpu_id %d) "
     "failed\n", smp_processor_id(),
     hard_smp_processor_id());
  }
 }
}
