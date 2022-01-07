
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_pt_regs {int cr_ifs; int loadrs; } ;


 int VMM_RBS_OFFSET ;
 int _IA64_REG_AR_BSPSTORE ;
 int _IA64_REG_AR_RNAT ;
 int _IA64_REG_AR_RSC ;
 scalar_t__ current_vcpu ;
 int ia64_flushrs () ;
 unsigned long ia64_getreg (int ) ;
 int ia64_loadrs () ;
 int ia64_mf () ;
 unsigned long* ia64_rse_rnat_addr (unsigned long*) ;
 unsigned long ia64_rse_slot_num (unsigned long*) ;
 int ia64_setreg (int ,unsigned long) ;
 unsigned long* kvm_rse_skip_regs (unsigned long*,long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 long rotate_reg (long,long,long) ;

void set_rse_reg(struct kvm_pt_regs *regs, unsigned long r1,
    unsigned long val, unsigned long nat)
{
 unsigned long *bsp, *bspstore, *addr, *rnat_addr;
 unsigned long *kbs = (void *) current_vcpu + VMM_RBS_OFFSET;
 unsigned long nat_mask;
 unsigned long old_rsc, new_rsc, psr;
 unsigned long rnat;
 long sof = (regs->cr_ifs) & 0x7f;
 long sor = (((regs->cr_ifs >> 14) & 0xf) << 3);
 long rrb_gr = (regs->cr_ifs >> 18) & 0x7f;
 long ridx = r1 - 32;

 if (ridx < sor)
  ridx = rotate_reg(sor, rrb_gr, ridx);

 old_rsc = ia64_getreg(_IA64_REG_AR_RSC);

 new_rsc = old_rsc & (~0x3fff0003);
 ia64_setreg(_IA64_REG_AR_RSC, new_rsc);
 bsp = kbs + (regs->loadrs >> 19);

 addr = kvm_rse_skip_regs(bsp, -sof + ridx);
 nat_mask = 1UL << ia64_rse_slot_num(addr);
 rnat_addr = ia64_rse_rnat_addr(addr);

 local_irq_save(psr);
 bspstore = (unsigned long *)ia64_getreg(_IA64_REG_AR_BSPSTORE);
 if (addr >= bspstore) {

  ia64_flushrs();
  ia64_mf();
  *addr = val;
  bspstore = (unsigned long *)ia64_getreg(_IA64_REG_AR_BSPSTORE);
  rnat = ia64_getreg(_IA64_REG_AR_RNAT);
  if (bspstore < rnat_addr)
   rnat = rnat & (~nat_mask);
  else
   *rnat_addr = (*rnat_addr)&(~nat_mask);

  ia64_mf();
  ia64_loadrs();
  ia64_setreg(_IA64_REG_AR_RNAT, rnat);
 } else {
  rnat = ia64_getreg(_IA64_REG_AR_RNAT);
  *addr = val;
  if (bspstore < rnat_addr)
   rnat = rnat&(~nat_mask);
  else
   *rnat_addr = (*rnat_addr) & (~nat_mask);

  ia64_setreg(_IA64_REG_AR_BSPSTORE, (unsigned long)bspstore);
  ia64_setreg(_IA64_REG_AR_RNAT, rnat);
 }
 local_irq_restore(psr);
 ia64_setreg(_IA64_REG_AR_RSC, old_rsc);
}
