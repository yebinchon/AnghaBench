
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int dcplb_miss (unsigned int) ;
 int dcplb_protection_fault (unsigned int) ;
 int icplb_miss (unsigned int) ;
 unsigned int raw_smp_processor_id () ;

int cplb_hdr(int seqstat, struct pt_regs *regs)
{
 int cause = seqstat & 0x3f;
 unsigned int cpu = raw_smp_processor_id();
 switch (cause) {
 case 0x23:
  return dcplb_protection_fault(cpu);
 case 0x2C:
  return icplb_miss(cpu);
 case 0x26:
  return dcplb_miss(cpu);
 default:
  return 1;
 }
}
