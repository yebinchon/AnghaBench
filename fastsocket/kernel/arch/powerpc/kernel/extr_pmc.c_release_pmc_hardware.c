
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 int dummy_perf ;
 int perf_irq ;
 int * pmc_owner_caller ;
 int pmc_owner_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void release_pmc_hardware(void)
{
 spin_lock(&pmc_owner_lock);

 WARN_ON(! pmc_owner_caller);

 pmc_owner_caller = ((void*)0);
 perf_irq = dummy_perf;

 spin_unlock(&pmc_owner_lock);
}
