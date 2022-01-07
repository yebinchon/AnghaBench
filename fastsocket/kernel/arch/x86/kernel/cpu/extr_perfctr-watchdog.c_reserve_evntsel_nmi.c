
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NMI_MAX_COUNTER_BITS ;
 int evntsel_nmi_owner ;
 unsigned int nmi_evntsel_msr_to_bit (unsigned int) ;
 int test_and_set_bit (unsigned int,int ) ;

int reserve_evntsel_nmi(unsigned int msr)
{
 unsigned int counter;

 counter = nmi_evntsel_msr_to_bit(msr);

 if (counter > NMI_MAX_COUNTER_BITS)
  return 1;

 if (!test_and_set_bit(counter, evntsel_nmi_owner))
  return 1;
 return 0;
}
