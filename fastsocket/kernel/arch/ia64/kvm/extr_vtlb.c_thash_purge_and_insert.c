
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ia64_rr {scalar_t__ ps; int val; } ;
typedef scalar_t__ u64 ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ GPFN_IO_MASK ;
 scalar_t__ GPFN_PHYS_MMIO ;
 scalar_t__ PAGE_FLAGS_RV_MASK ;
 scalar_t__ PAGE_SHIFT ;
 int VMX (struct kvm_vcpu*,int ) ;
 scalar_t__ VTLB_PTE_IO ;
 scalar_t__ _PAGE_MA_MASK ;
 scalar_t__ _PAGE_MA_NAT ;
 scalar_t__ _PAGE_PPN_MASK ;
 scalar_t__ ia64_clear_ic () ;
 int ia64_get_rr (scalar_t__) ;
 int ia64_itc (int,scalar_t__,scalar_t__,scalar_t__) ;
 int ia64_set_psr (scalar_t__) ;
 scalar_t__ itir_ps (scalar_t__) ;
 scalar_t__ kvm_get_mpt_entry (scalar_t__) ;
 int mark_pages_dirty (struct kvm_vcpu*,scalar_t__,scalar_t__) ;
 int paravirt_dv_serialize_data () ;
 int tc_regions ;
 scalar_t__ translate_phy_pte (scalar_t__*,scalar_t__,scalar_t__) ;
 int vcpu_get_rr (struct kvm_vcpu*,scalar_t__) ;
 int vcpu_quick_region_set (int ,scalar_t__) ;
 int vhpt_insert (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int vhpt_purge (struct kvm_vcpu*,scalar_t__,scalar_t__) ;
 int vtlb_insert (struct kvm_vcpu*,scalar_t__,scalar_t__,scalar_t__) ;
 int vtlb_purge (struct kvm_vcpu*,scalar_t__,scalar_t__) ;

void thash_purge_and_insert(struct kvm_vcpu *v, u64 pte, u64 itir,
      u64 ifa, int type)
{
 u64 ps;
 u64 phy_pte, io_mask, index;
 union ia64_rr vrr, mrr;

 ps = itir_ps(itir);
 vrr.val = vcpu_get_rr(v, ifa);
 mrr.val = ia64_get_rr(ifa);

 index = (pte & _PAGE_PPN_MASK) >> PAGE_SHIFT;
 io_mask = kvm_get_mpt_entry(index) & GPFN_IO_MASK;
 phy_pte = translate_phy_pte(&pte, itir, ifa);





 if (!(pte & VTLB_PTE_IO) && ((pte & _PAGE_MA_MASK) != _PAGE_MA_NAT) &&
   io_mask != GPFN_PHYS_MMIO) {
  pte &= ~_PAGE_MA_MASK;
  phy_pte &= ~_PAGE_MA_MASK;
 }

 vtlb_purge(v, ifa, ps);
 vhpt_purge(v, ifa, ps);

 if ((ps != mrr.ps) || (pte & VTLB_PTE_IO)) {
  vtlb_insert(v, pte, itir, ifa);
  vcpu_quick_region_set(VMX(v, tc_regions), ifa);
 }
 if (pte & VTLB_PTE_IO)
  return;

 if (ps >= mrr.ps)
  vhpt_insert(phy_pte, itir, ifa, pte);
 else {
  u64 psr;
  phy_pte &= ~PAGE_FLAGS_RV_MASK;
  psr = ia64_clear_ic();
  ia64_itc(type, ifa, phy_pte, ps);
  paravirt_dv_serialize_data();
  ia64_set_psr(psr);
 }
 if (!(pte&VTLB_PTE_IO))
  mark_pages_dirty(v, pte, ps);

}
