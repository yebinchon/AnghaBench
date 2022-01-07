
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long nip; } ;
struct op_counter_config {scalar_t__ enabled; } ;


 int MSR_PMM ;
 int ctr_read (int) ;
 int ctr_write (int,int ) ;
 int is_kernel_addr (unsigned long) ;
 int mfmsr () ;
 int mtmsr (int) ;
 int num_counters ;
 int oprofile_add_ext_sample (unsigned long,struct pt_regs*,int,int) ;
 scalar_t__ oprofile_running ;
 int pmc_start_ctrs (int) ;
 int * reset_value ;

__attribute__((used)) static void fsl_emb_handle_interrupt(struct pt_regs *regs,
        struct op_counter_config *ctr)
{
 unsigned long pc;
 int is_kernel;
 int val;
 int i;


 mtmsr(mfmsr() | MSR_PMM);

 pc = regs->nip;
 is_kernel = is_kernel_addr(pc);

 for (i = 0; i < num_counters; ++i) {
  val = ctr_read(i);
  if (val < 0) {
   if (oprofile_running && ctr[i].enabled) {
    oprofile_add_ext_sample(pc, regs, i, is_kernel);
    ctr_write(i, reset_value[i]);
   } else {
    ctr_write(i, 0);
   }
  }
 }





 pmc_start_ctrs(1);
}
