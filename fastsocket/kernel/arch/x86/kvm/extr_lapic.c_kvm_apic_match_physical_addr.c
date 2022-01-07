
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct kvm_lapic {int dummy; } ;


 int kvm_apic_id (struct kvm_lapic*) ;

int kvm_apic_match_physical_addr(struct kvm_lapic *apic, u16 dest)
{
 return dest == 0xff || kvm_apic_id(apic) == dest;
}
