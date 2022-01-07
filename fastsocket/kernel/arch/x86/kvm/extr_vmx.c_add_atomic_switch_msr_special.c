
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int VM_ENTRY_CONTROLS ;
 int VM_EXIT_CONTROLS ;
 int vmcs_set_bits (int ,unsigned long) ;
 int vmcs_write64 (unsigned long,int ) ;

__attribute__((used)) static void add_atomic_switch_msr_special(unsigned long entry,
  unsigned long exit, unsigned long guest_val_vmcs,
  unsigned long host_val_vmcs, u64 guest_val, u64 host_val)
{
 vmcs_write64(guest_val_vmcs, guest_val);
 vmcs_write64(host_val_vmcs, host_val);
 vmcs_set_bits(VM_ENTRY_CONTROLS, entry);
 vmcs_set_bits(VM_EXIT_CONTROLS, exit);
}
