
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_counter_config {scalar_t__ enabled; } ;


 int MSR_PMM ;
 int classic_ctr_write (int,int ) ;
 int mfmsr () ;
 int mtmsr (int) ;
 int num_pmcs ;
 int oprofile_running ;
 int pmc_start_ctrs () ;
 int * reset_value ;

__attribute__((used)) static int fsl7450_start(struct op_counter_config *ctr)
{
 int i;

 mtmsr(mfmsr() | MSR_PMM);

 for (i = 0; i < num_pmcs; ++i) {
  if (ctr[i].enabled)
   classic_ctr_write(i, reset_value[i]);
  else
   classic_ctr_write(i, 0);
 }




 pmc_start_ctrs();

 oprofile_running = 1;

 return 0;
}
