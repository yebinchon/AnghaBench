
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X86_CR4_VMXE ;
 int kvm_cpu_vmxoff () ;
 int read_cr4 () ;
 int vmclear_local_vcpus () ;
 scalar_t__ vmm_exclusive ;
 int write_cr4 (int) ;

__attribute__((used)) static void hardware_disable(void *garbage)
{
 if (vmm_exclusive) {
  vmclear_local_vcpus();
  kvm_cpu_vmxoff();
 }
 write_cr4(read_cr4() & ~X86_CR4_VMXE);
}
