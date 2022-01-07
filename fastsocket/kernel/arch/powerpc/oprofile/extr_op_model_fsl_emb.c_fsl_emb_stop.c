
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMRN_PMGC0 ;
 int mb () ;
 int mfpmr (int ) ;
 scalar_t__ oprofile_running ;
 int pmc_stop_ctrs () ;
 int pr_debug (char*,int ,int ) ;
 int smp_processor_id () ;

__attribute__((used)) static void fsl_emb_stop(void)
{

 pmc_stop_ctrs();

 oprofile_running = 0;

 pr_debug("stop on cpu %d, pmgc0 %x\n", smp_processor_id(),
   mfpmr(PMRN_PMGC0));

 mb();
}
