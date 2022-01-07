
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CO_APIC (unsigned int) ;
 int CO_APIC_CPU ;
 int CO_APIC_IDE1 ;


 scalar_t__ IS_CO_APIC (unsigned int) ;
 int co_apic_ide0_hack () ;

__attribute__((used)) static int is_co_apic(unsigned int irq)
{
 if (IS_CO_APIC(irq))
  return CO_APIC(irq);

 switch (irq) {
  case 0: return CO_APIC_CPU;
  case 129: return co_apic_ide0_hack();
  case 128: return CO_APIC_IDE1;
  default: return -1;
 }
}
