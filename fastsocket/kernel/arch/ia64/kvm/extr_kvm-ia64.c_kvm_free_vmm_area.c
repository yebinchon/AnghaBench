
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KVM_VMM_SIZE ;
 int free_pages (scalar_t__,int ) ;
 int get_order (int ) ;
 scalar_t__ kvm_vm_buffer ;
 scalar_t__ kvm_vmm_base ;
 scalar_t__ kvm_vsa_base ;
 int memset (void*,int ,int ) ;

__attribute__((used)) static void kvm_free_vmm_area(void)
{
 if (kvm_vmm_base) {

  memset((void *)kvm_vmm_base, 0, KVM_VMM_SIZE);
  free_pages(kvm_vmm_base, get_order(KVM_VMM_SIZE));
  kvm_vmm_base = 0;
  kvm_vm_buffer = 0;
  kvm_vsa_base = 0;
 }
}
