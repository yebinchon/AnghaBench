
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct op_counter_config {scalar_t__ enabled; } ;


 unsigned int MMCR0_FC ;
 unsigned int MMCR0_PMXE ;
 int MSR_PMM ;
 int SPRN_MMCR0 ;
 int SPRN_SIAR ;
 int classic_ctr_read (int) ;
 int classic_ctr_write (int,int ) ;
 int is_kernel_addr (unsigned long) ;
 int mfmsr () ;
 void* mfspr (int ) ;
 int mtmsrd (int) ;
 int mtspr (int ,unsigned int) ;
 int num_counters ;
 int oprofile_add_ext_sample (unsigned long,struct pt_regs*,int,int) ;
 int * reset_value ;

__attribute__((used)) static void rs64_handle_interrupt(struct pt_regs *regs,
      struct op_counter_config *ctr)
{
 unsigned int mmcr0;
 int is_kernel;
 int val;
 int i;
 unsigned long pc = mfspr(SPRN_SIAR);

 is_kernel = is_kernel_addr(pc);


 mtmsrd(mfmsr() | MSR_PMM);

 for (i = 0; i < num_counters; ++i) {
  val = classic_ctr_read(i);
  if (val < 0) {
   if (ctr[i].enabled) {
    oprofile_add_ext_sample(pc, regs, i, is_kernel);
    classic_ctr_write(i, reset_value[i]);
   } else {
    classic_ctr_write(i, 0);
   }
  }
 }

 mmcr0 = mfspr(SPRN_MMCR0);


 mmcr0 |= MMCR0_PMXE;






 mmcr0 &= ~MMCR0_FC;
 mtspr(SPRN_MMCR0, mmcr0);
}
