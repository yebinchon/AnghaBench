
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct cbe_pmd_shadow_regs {int counter_value_in_latch; } ;


 size_t CBE_PM_ENABLE_PERF_MON ;
 size_t NR_PHYS_CTRS ;
 int WRITE_WO_MMIO (int ,size_t) ;
 struct cbe_pmd_shadow_regs* cbe_get_cpu_pmd_shadow_regs (size_t) ;
 size_t cbe_read_pm (size_t,int ) ;
 int cbe_write_pm (size_t,int ,size_t) ;
 int pm_control ;
 int * pm_ctr ;

void cbe_write_phys_ctr(u32 cpu, u32 phys_ctr, u32 val)
{
 struct cbe_pmd_shadow_regs *shadow_regs;
 u32 pm_ctrl;

 if (phys_ctr < NR_PHYS_CTRS) {




  WRITE_WO_MMIO(pm_ctr[phys_ctr], val);

  pm_ctrl = cbe_read_pm(cpu, pm_control);
  if (pm_ctrl & CBE_PM_ENABLE_PERF_MON) {




   cbe_write_pm(cpu, pm_control, pm_ctrl);
  } else {
   shadow_regs = cbe_get_cpu_pmd_shadow_regs(cpu);
   shadow_regs->counter_value_in_latch |= (1 << phys_ctr);
  }
 }
}
