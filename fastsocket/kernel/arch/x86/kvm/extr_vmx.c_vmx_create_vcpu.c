
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int cpu; } ;
struct vcpu_vmx {struct kvm_vcpu vcpu; int guest_msrs; int vmcs; } ;
struct TYPE_2__ {scalar_t__ ept_identity_map_addr; } ;
struct kvm {TYPE_1__ arch; } ;


 int ENOMEM ;
 struct kvm_vcpu* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 scalar_t__ VMX_EPT_IDENTITY_PAGETABLE_ADDR ;
 scalar_t__ alloc_apic_access_page (struct kvm*) ;
 scalar_t__ alloc_identity_pagetable (struct kvm*) ;
 int alloc_vmcs () ;
 int allocate_vpid (struct vcpu_vmx*) ;
 scalar_t__ enable_ept ;
 int free_vmcs (int ) ;
 int free_vpid (struct vcpu_vmx*) ;
 int get_cpu () ;
 int init_rmode_identity_map (struct kvm*) ;
 int kfree (int ) ;
 int kmalloc (int ,int ) ;
 int kmem_cache_free (int ,struct vcpu_vmx*) ;
 struct vcpu_vmx* kmem_cache_zalloc (int ,int ) ;
 int kvm_vcpu_cache ;
 int kvm_vcpu_init (struct kvm_vcpu*,struct kvm*,unsigned int) ;
 int kvm_vcpu_uninit (struct kvm_vcpu*) ;
 int put_cpu () ;
 scalar_t__ vm_need_virtualize_apic_accesses (struct kvm*) ;
 int vmcs_init (int ) ;
 int vmx_vcpu_load (struct kvm_vcpu*,int) ;
 int vmx_vcpu_put (struct kvm_vcpu*) ;
 int vmx_vcpu_setup (struct vcpu_vmx*) ;

__attribute__((used)) static struct kvm_vcpu *vmx_create_vcpu(struct kvm *kvm, unsigned int id)
{
 int err;
 struct vcpu_vmx *vmx = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
 int cpu;

 if (!vmx)
  return ERR_PTR(-ENOMEM);

 allocate_vpid(vmx);

 err = kvm_vcpu_init(&vmx->vcpu, kvm, id);
 if (err)
  goto free_vcpu;

 vmx->guest_msrs = kmalloc(PAGE_SIZE, GFP_KERNEL);
 if (!vmx->guest_msrs) {
  err = -ENOMEM;
  goto uninit_vcpu;
 }

 vmx->vmcs = alloc_vmcs();
 if (!vmx->vmcs)
  goto free_msrs;

 vmcs_init(vmx->vmcs);

 cpu = get_cpu();
 vmx_vcpu_load(&vmx->vcpu, cpu);
 vmx->vcpu.cpu = cpu;
 err = vmx_vcpu_setup(vmx);
 vmx_vcpu_put(&vmx->vcpu);
 put_cpu();
 if (err)
  goto free_vmcs;
 if (vm_need_virtualize_apic_accesses(kvm))
  if (alloc_apic_access_page(kvm) != 0)
   goto free_vmcs;

 if (enable_ept) {
  if (!kvm->arch.ept_identity_map_addr)
   kvm->arch.ept_identity_map_addr =
    VMX_EPT_IDENTITY_PAGETABLE_ADDR;
  err = -ENOMEM;
  if (alloc_identity_pagetable(kvm) != 0)
   goto free_vmcs;
  if (!init_rmode_identity_map(kvm))
   goto free_vmcs;
 }

 return &vmx->vcpu;

free_vmcs:
 free_vmcs(vmx->vmcs);
free_msrs:
 kfree(vmx->guest_msrs);
uninit_vcpu:
 kvm_vcpu_uninit(&vmx->vcpu);
free_vcpu:
 free_vpid(vmx);
 kmem_cache_free(kvm_vcpu_cache, vmx);
 return ERR_PTR(err);
}
