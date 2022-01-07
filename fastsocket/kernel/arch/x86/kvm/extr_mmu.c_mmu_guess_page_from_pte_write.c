
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_5__ {int gfn; int pfn; int mmu_seq; } ;
struct TYPE_6__ {TYPE_1__ update_pte; } ;
struct kvm_vcpu {TYPE_2__ arch; TYPE_3__* kvm; } ;
typedef int pfn_t ;
typedef int gpa_t ;
typedef int gfn_t ;
struct TYPE_7__ {int mmu_notifier_seq; } ;


 int PAGE_SHIFT ;
 int PT64_BASE_ADDR_MASK ;
 int gfn_to_pfn (TYPE_3__*,int) ;
 scalar_t__ is_error_pfn (int ) ;
 scalar_t__ is_pae (struct kvm_vcpu*) ;
 int is_present_gpte (int) ;
 int kvm_read_guest (TYPE_3__*,int,int*,int) ;
 int kvm_release_pfn_clean (int ) ;
 int memcpy (void*,int const*,int) ;
 int smp_rmb () ;

__attribute__((used)) static void mmu_guess_page_from_pte_write(struct kvm_vcpu *vcpu, gpa_t gpa,
       const u8 *new, int bytes)
{
 gfn_t gfn;
 int r;
 u64 gpte = 0;
 pfn_t pfn;

 if (bytes != 4 && bytes != 8)
  return;







 if (is_pae(vcpu)) {

  if ((bytes == 4) && (gpa % 4 == 0)) {
   r = kvm_read_guest(vcpu->kvm, gpa & ~(u64)7, &gpte, 8);
   if (r)
    return;
   memcpy((void *)&gpte + (gpa % 8), new, 4);
  } else if ((bytes == 8) && (gpa % 8 == 0)) {
   memcpy((void *)&gpte, new, 8);
  }
 } else {
  if ((bytes == 4) && (gpa % 4 == 0))
   memcpy((void *)&gpte, new, 4);
 }
 if (!is_present_gpte(gpte))
  return;
 gfn = (gpte & PT64_BASE_ADDR_MASK) >> PAGE_SHIFT;

 vcpu->arch.update_pte.mmu_seq = vcpu->kvm->mmu_notifier_seq;
 smp_rmb();
 pfn = gfn_to_pfn(vcpu->kvm, gfn);

 if (is_error_pfn(pfn)) {
  kvm_release_pfn_clean(pfn);
  return;
 }
 vcpu->arch.update_pte.gfn = gfn;
 vcpu->arch.update_pte.pfn = pfn;
}
