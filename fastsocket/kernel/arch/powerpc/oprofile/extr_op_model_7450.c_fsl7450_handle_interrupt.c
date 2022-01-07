
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct op_counter_config {scalar_t__ enabled; } ;


 int MSR_PMM ;
 int SPRN_SIAR ;
 int classic_ctr_read (int) ;
 int classic_ctr_write (int,int ) ;
 int is_kernel_addr (unsigned long) ;
 int mfmsr () ;
 unsigned long mfspr (int ) ;
 int mtmsr (int) ;
 int num_pmcs ;
 int oprofile_add_ext_sample (unsigned long,struct pt_regs*,int,int) ;
 scalar_t__ oprofile_running ;
 int pmc_start_ctrs () ;
 int * reset_value ;

__attribute__((used)) static void fsl7450_handle_interrupt(struct pt_regs *regs,
        struct op_counter_config *ctr)
{
 unsigned long pc;
 int is_kernel;
 int val;
 int i;


 mtmsr(mfmsr() | MSR_PMM);

 pc = mfspr(SPRN_SIAR);
 is_kernel = is_kernel_addr(pc);

 for (i = 0; i < num_pmcs; ++i) {
  val = classic_ctr_read(i);
  if (val < 0) {
   if (oprofile_running && ctr[i].enabled) {
    oprofile_add_ext_sample(pc, regs, i, is_kernel);
    classic_ctr_write(i, reset_value[i]);
   } else {
    classic_ctr_write(i, 0);
   }
  }
 }





 pmc_start_ctrs();
}
