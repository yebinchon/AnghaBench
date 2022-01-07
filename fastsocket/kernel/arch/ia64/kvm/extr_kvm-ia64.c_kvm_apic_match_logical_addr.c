
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kvm_lapic {int dummy; } ;



int kvm_apic_match_logical_addr(struct kvm_lapic *apic, u8 mda)
{
 return 0;
}
