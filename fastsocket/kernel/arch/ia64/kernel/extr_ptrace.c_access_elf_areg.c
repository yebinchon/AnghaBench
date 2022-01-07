
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_frame_info {int dummy; } ;
struct task_struct {int dummy; } ;
struct pt_regs {unsigned long ar_rsc; unsigned long ar_bspstore; unsigned long ar_rnat; unsigned long ar_ccv; unsigned long ar_unat; unsigned long ar_fpsr; unsigned long ar_pfs; unsigned long ar_csd; unsigned long ar_ssd; unsigned long cr_iip; unsigned long cr_ifs; unsigned long cr_ipsr; unsigned long pr; int loadrs; } ;
 unsigned long ELF_NAT_OFFSET ;
 unsigned long ELF_PR_OFFSET ;
 unsigned long IA64_PSR_RI ;
 unsigned long IPSR_MASK ;
 unsigned long PFM_MASK ;
 int UNW_AR_EC ;
 int UNW_AR_LC ;
 int access_nat_bits (struct task_struct*,struct pt_regs*,struct unw_frame_info*,unsigned long*,int) ;
 int convert_to_non_syscall (struct task_struct*,struct pt_regs*,unsigned long) ;
 unsigned long ia64_get_user_rbs_end (struct task_struct*,struct pt_regs*,unsigned long*) ;
 int in_syscall (struct pt_regs*) ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;
 int unw_access_ar (struct unw_frame_info*,int ,unsigned long*,int) ;

__attribute__((used)) static int
access_elf_areg(struct task_struct *target, struct unw_frame_info *info,
  unsigned long addr, unsigned long *data, int write_access)
{
 struct pt_regs *pt;
 unsigned long cfm, urbs_end;
 unsigned long *ptr = ((void*)0);

 pt = task_pt_regs(target);
 if (addr >= 133 && addr <= 132) {
  switch (addr) {
  case 133:

   if (write_access)
    pt->ar_rsc = *data | (3 << 2);
   else
    *data = pt->ar_rsc;
   return 0;
  case 141:
   urbs_end = ia64_get_user_rbs_end(target, pt, &cfm);
   if (write_access) {
    if (*data != urbs_end) {
     if (in_syscall(pt))
      convert_to_non_syscall(target,
               pt,
               cfm);




     pt->loadrs = 0;
     pt->ar_bspstore = *data;
    }
   } else
    *data = urbs_end;
   return 0;
  case 142:
   ptr = &pt->ar_bspstore;
   break;
  case 134:
   ptr = &pt->ar_rnat;
   break;
  case 140:
   ptr = &pt->ar_ccv;
   break;
  case 131:
   ptr = &pt->ar_unat;
   break;
  case 137:
   ptr = &pt->ar_fpsr;
   break;
  case 135:
   ptr = &pt->ar_pfs;
   break;
  case 136:
   return unw_access_ar(info, UNW_AR_LC, data,
          write_access);
  case 138:
   return unw_access_ar(info, UNW_AR_EC, data,
          write_access);
  case 139:
   ptr = &pt->ar_csd;
   break;
  case 132:
   ptr = &pt->ar_ssd;
  }
 } else if (addr >= 129 && addr <= 128) {
  switch (addr) {
  case 129:
   ptr = &pt->cr_iip;
   break;
  case 130:
   urbs_end = ia64_get_user_rbs_end(target, pt, &cfm);
   if (write_access) {
    if (((cfm ^ *data) & PFM_MASK) != 0) {
     if (in_syscall(pt))
      convert_to_non_syscall(target,
               pt,
               cfm);
     pt->cr_ifs = ((pt->cr_ifs & ~PFM_MASK)
            | (*data & PFM_MASK));
    }
   } else
    *data = cfm;
   return 0;
  case 128:
   if (write_access) {
    unsigned long tmp = *data;

    if ((tmp & IA64_PSR_RI) == IA64_PSR_RI)
     tmp &= ~IA64_PSR_RI;
    pt->cr_ipsr = ((tmp & IPSR_MASK)
            | (pt->cr_ipsr & ~IPSR_MASK));
   } else
    *data = (pt->cr_ipsr & IPSR_MASK);
   return 0;
  }
 } else if (addr == ELF_NAT_OFFSET)
  return access_nat_bits(target, pt, info,
           data, write_access);
 else if (addr == ELF_PR_OFFSET)
  ptr = &pt->pr;
 else
  return -1;

 if (write_access)
  *ptr = *data;
 else
  *data = *ptr;

 return 0;
}
