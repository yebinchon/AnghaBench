
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
 int ia64_mf () ;
 unsigned long* ia64_rse_rnat_addr (unsigned long*) ;
 unsigned long ia64_rse_slot_num (unsigned long*) ;
 int ia64_setreg (int ,unsigned long) ;
 unsigned long* kvm_rse_skip_regs (unsigned long*,long) ;
 long rotate_reg (long,long,long) ;

__attribute__((used)) static void get_rse_reg(struct kvm_pt_regs *regs, unsigned long r1,
     unsigned long *val, int *nat)
{
 unsigned long *bsp, *addr, *rnat_addr, *bspstore;
 unsigned long *kbs = (void *) current_vcpu + VMM_RBS_OFFSET;
 unsigned long nat_mask;
 unsigned long old_rsc, new_rsc;
 long sof = (regs->cr_ifs) & 0x7f;
 long sor = (((regs->cr_ifs >> 14) & 0xf) << 3);
 long rrb_gr = (regs->cr_ifs >> 18) & 0x7f;
 long ridx = r1 - 32;

 if (ridx < sor)
  ridx = rotate_reg(sor, rrb_gr, ridx);

 old_rsc = ia64_getreg(_IA64_REG_AR_RSC);
 new_rsc = old_rsc&(~(0x3));
 ia64_setreg(_IA64_REG_AR_RSC, new_rsc);

 bspstore = (unsigned long *)ia64_getreg(_IA64_REG_AR_BSPSTORE);
 bsp = kbs + (regs->loadrs >> 19);

 addr = kvm_rse_skip_regs(bsp, -sof + ridx);
 nat_mask = 1UL << ia64_rse_slot_num(addr);
 rnat_addr = ia64_rse_rnat_addr(addr);

 if (addr >= bspstore) {
  ia64_flushrs();
  ia64_mf();
  bspstore = (unsigned long *)ia64_getreg(_IA64_REG_AR_BSPSTORE);
 }
 *val = *addr;
 if (nat) {
  if (bspstore < rnat_addr)
   *nat = (int)!!(ia64_getreg(_IA64_REG_AR_RNAT)
       & nat_mask);
  else
   *nat = (int)!!((*rnat_addr) & nat_mask);
  ia64_setreg(_IA64_REG_AR_RSC, old_rsc);
 }
}
