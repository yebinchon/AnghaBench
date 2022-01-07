
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 scalar_t__ KVM_P2M_BASE ;
 int KVM_P2M_SIZE ;
 int current_vcpu ;
 int panic_vm (int ,char*,int) ;

u64 kvm_get_mpt_entry(u64 gpfn)
{
 u64 *base = (u64 *) KVM_P2M_BASE;

 if (gpfn >= (KVM_P2M_SIZE >> 3))
  panic_vm(current_vcpu, "Invalid gpfn =%lx\n", gpfn);

 return *(base + gpfn);
}
