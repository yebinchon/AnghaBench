
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_lapic {int dummy; } ;


 int APIC_PROCPRI ;
 int APIC_TASKPRI ;
 int apic_debug (char*,struct kvm_lapic*,int,int,int) ;
 int apic_find_highest_isr (struct kvm_lapic*) ;
 int apic_get_reg (struct kvm_lapic*,int ) ;
 int apic_set_reg (struct kvm_lapic*,int ,int) ;

__attribute__((used)) static void apic_update_ppr(struct kvm_lapic *apic)
{
 u32 tpr, isrv, ppr;
 int isr;

 tpr = apic_get_reg(apic, APIC_TASKPRI);
 isr = apic_find_highest_isr(apic);
 isrv = (isr != -1) ? isr : 0;

 if ((tpr & 0xf0) >= (isrv & 0xf0))
  ppr = tpr & 0xff;
 else
  ppr = isrv & 0xf0;

 apic_debug("vlapic %p, ppr 0x%x, isr 0x%x, isrv 0x%x",
     apic, ppr, isr, isrv);

 apic_set_reg(apic, APIC_PROCPRI, ppr);
}
