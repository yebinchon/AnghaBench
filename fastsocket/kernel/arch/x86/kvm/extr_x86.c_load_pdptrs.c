
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int** rsvd_bits_mask; } ;
struct TYPE_4__ {int* pdptrs; int regs_dirty; int regs_avail; TYPE_1__ mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; int kvm; } ;
typedef int pdpte ;
typedef unsigned long gfn_t ;


 int ARRAY_SIZE (int*) ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int VCPU_EXREG_PDPTR ;
 int __set_bit (int ,unsigned long*) ;
 scalar_t__ is_present_gpte (int) ;
 int kvm_read_guest_page (int ,unsigned long,int*,unsigned int,int) ;
 int memcpy (int*,int*,int) ;

int load_pdptrs(struct kvm_vcpu *vcpu, unsigned long cr3)
{
 gfn_t pdpt_gfn = cr3 >> PAGE_SHIFT;
 unsigned offset = ((cr3 & (PAGE_SIZE-1)) >> 5) << 2;
 int i;
 int ret;
 u64 pdpte[ARRAY_SIZE(vcpu->arch.pdptrs)];

 ret = kvm_read_guest_page(vcpu->kvm, pdpt_gfn, pdpte,
      offset * sizeof(u64), sizeof(pdpte));
 if (ret < 0) {
  ret = 0;
  goto out;
 }
 for (i = 0; i < ARRAY_SIZE(pdpte); ++i) {
  if (is_present_gpte(pdpte[i]) &&
      (pdpte[i] & vcpu->arch.mmu.rsvd_bits_mask[0][2])) {
   ret = 0;
   goto out;
  }
 }
 ret = 1;

 memcpy(vcpu->arch.pdptrs, pdpte, sizeof(vcpu->arch.pdptrs));
 __set_bit(VCPU_EXREG_PDPTR,
    (unsigned long *)&vcpu->arch.regs_avail);
 __set_bit(VCPU_EXREG_PDPTR,
    (unsigned long *)&vcpu->arch.regs_dirty);
out:

 return ret;
}
