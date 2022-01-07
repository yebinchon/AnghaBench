
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_vmx {int guest_msrs; } ;
struct kvm_vcpu {int dummy; } ;


 int free_vpid (struct vcpu_vmx*) ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct vcpu_vmx*) ;
 int kvm_vcpu_cache ;
 int kvm_vcpu_uninit (struct kvm_vcpu*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmx_free_vmcs (struct kvm_vcpu*) ;

__attribute__((used)) static void vmx_free_vcpu(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);

 free_vpid(vmx);
 vmx_free_vmcs(vcpu);
 kfree(vmx->guest_msrs);
 kvm_vcpu_uninit(vcpu);
 kmem_cache_free(kvm_vcpu_cache, vmx);
}
