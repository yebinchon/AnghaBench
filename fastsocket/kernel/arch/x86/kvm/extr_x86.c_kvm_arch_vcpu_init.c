
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct page {int dummy; } ;
struct TYPE_3__ {int root_hpa; } ;
struct TYPE_4__ {int mcg_cap; int pv_time_enabled; scalar_t__ pio_data; int mce_banks; int mp_state; TYPE_1__ mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; struct kvm* kvm; } ;
struct kvm {int dummy; } ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INVALID_PAGE ;
 int KVM_MAX_MCE_BANKS ;
 int KVM_MP_STATE_RUNNABLE ;
 int KVM_MP_STATE_UNINITIALIZED ;
 int __GFP_ZERO ;
 struct page* alloc_page (int) ;
 int free_page (unsigned long) ;
 scalar_t__ irqchip_in_kernel (struct kvm*) ;
 int kvm_create_lapic (struct kvm_vcpu*) ;
 int kvm_free_lapic (struct kvm_vcpu*) ;
 int kvm_init_tsc_catchup (struct kvm_vcpu*,int ) ;
 int kvm_mmu_create (struct kvm_vcpu*) ;
 int kvm_mmu_destroy (struct kvm_vcpu*) ;
 int kvm_pmu_init (struct kvm_vcpu*) ;
 scalar_t__ kvm_vcpu_is_bsp (struct kvm_vcpu*) ;
 int kzalloc (int,int) ;
 int max_tsc_khz ;
 scalar_t__ page_address (struct page*) ;

int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
{
 struct page *page;
 struct kvm *kvm;
 int r;

 BUG_ON(vcpu->kvm == ((void*)0));
 kvm = vcpu->kvm;

 vcpu->arch.mmu.root_hpa = INVALID_PAGE;
 if (!irqchip_in_kernel(kvm) || kvm_vcpu_is_bsp(vcpu))
  vcpu->arch.mp_state = KVM_MP_STATE_RUNNABLE;
 else
  vcpu->arch.mp_state = KVM_MP_STATE_UNINITIALIZED;

 page = alloc_page(GFP_KERNEL | __GFP_ZERO);
 if (!page) {
  r = -ENOMEM;
  goto fail;
 }
 vcpu->arch.pio_data = page_address(page);

 kvm_init_tsc_catchup(vcpu, max_tsc_khz);

 r = kvm_mmu_create(vcpu);
 if (r < 0)
  goto fail_free_pio_data;

 if (irqchip_in_kernel(kvm)) {
  r = kvm_create_lapic(vcpu);
  if (r < 0)
   goto fail_mmu_destroy;
 }

 vcpu->arch.mce_banks = kzalloc(KVM_MAX_MCE_BANKS * sizeof(u64) * 4,
           GFP_KERNEL);
 if (!vcpu->arch.mce_banks) {
  r = -ENOMEM;
  goto fail_free_lapic;
 }
 vcpu->arch.mcg_cap = KVM_MAX_MCE_BANKS;

 vcpu->arch.pv_time_enabled = 0;
 kvm_pmu_init(vcpu);

 return 0;
fail_free_lapic:
 kvm_free_lapic(vcpu);
fail_mmu_destroy:
 kvm_mmu_destroy(vcpu);
fail_free_pio_data:
 free_page((unsigned long)vcpu->arch.pio_data);
fail:
 return r;
}
