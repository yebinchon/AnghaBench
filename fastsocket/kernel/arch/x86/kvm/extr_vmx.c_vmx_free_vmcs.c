
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_vmx {int * vmcs; } ;
struct kvm_vcpu {int dummy; } ;


 int free_vmcs (int *) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vcpu_clear (struct vcpu_vmx*) ;

__attribute__((used)) static void vmx_free_vmcs(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);

 if (vmx->vmcs) {
  vcpu_clear(vmx);
  free_vmcs(vmx->vmcs);
  vmx->vmcs = ((void*)0);
 }
}
