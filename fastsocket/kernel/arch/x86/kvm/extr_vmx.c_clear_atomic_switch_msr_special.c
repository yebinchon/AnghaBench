
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VM_ENTRY_CONTROLS ;
 int VM_EXIT_CONTROLS ;
 int vmcs_clear_bits (int ,unsigned long) ;

__attribute__((used)) static void clear_atomic_switch_msr_special(unsigned long entry,
  unsigned long exit)
{
 vmcs_clear_bits(VM_ENTRY_CONTROLS, entry);
 vmcs_clear_bits(VM_EXIT_CONTROLS, exit);
}
