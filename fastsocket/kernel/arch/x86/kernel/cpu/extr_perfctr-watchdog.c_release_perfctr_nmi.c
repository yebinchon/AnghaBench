
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NMI_MAX_COUNTER_BITS ;
 int clear_bit (unsigned int,int ) ;
 unsigned int nmi_perfctr_msr_to_bit (unsigned int) ;
 int perfctr_nmi_owner ;

void release_perfctr_nmi(unsigned int msr)
{
 unsigned int counter;

 counter = nmi_perfctr_msr_to_bit(msr);

 if (counter > NMI_MAX_COUNTER_BITS)
  return;

 clear_bit(counter, perfctr_nmi_owner);
}
