
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vmcs {int dummy; } ;


 int __pa (int ) ;
 int kvm_cpu_vmxoff () ;
 int kvm_cpu_vmxon (int ) ;
 int per_cpu (int ,int ) ;
 int raw_smp_processor_id () ;
 int vmcs_clear (struct vmcs*) ;
 int vmm_exclusive ;
 int vmxarea ;

__attribute__((used)) static inline void vmcs_init(struct vmcs *vmcs)
{
 u64 phys_addr = __pa(per_cpu(vmxarea, raw_smp_processor_id()));

 if (!vmm_exclusive)
  kvm_cpu_vmxon(phys_addr);

 vmcs_clear(vmcs);

 if (!vmm_exclusive)
  kvm_cpu_vmxoff();
}
