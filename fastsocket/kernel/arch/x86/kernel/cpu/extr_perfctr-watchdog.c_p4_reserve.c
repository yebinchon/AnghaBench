
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_P4_CRU_ESCR0 ;
 int MSR_P4_IQ_PERFCTR0 ;
 int MSR_P4_IQ_PERFCTR1 ;
 int release_perfctr_nmi (int ) ;
 int reserve_evntsel_nmi (int ) ;
 int reserve_perfctr_nmi (int ) ;
 int smp_num_siblings ;

__attribute__((used)) static int p4_reserve(void)
{
 if (!reserve_perfctr_nmi(MSR_P4_IQ_PERFCTR0))
  return 0;




 if (!reserve_evntsel_nmi(MSR_P4_CRU_ESCR0))
  goto fail2;

 return 1;
 fail2:





 release_perfctr_nmi(MSR_P4_IQ_PERFCTR0);
 return 0;
}
