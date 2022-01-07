
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct multicall_space {int mc; } ;
struct mm_struct {int dummy; } ;
typedef int pte_t ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int ADD_STATS (int ,int) ;
 scalar_t__ HYPERVISOR_update_va_mapping (unsigned long,int ,int ) ;
 int MULTI_update_va_mapping (int ,unsigned long,int ,int ) ;
 scalar_t__ PARAVIRT_LAZY_MMU ;
 TYPE_1__* current ;
 struct mm_struct init_mm ;
 scalar_t__ paravirt_get_lazy_mode () ;
 int set_pte_at ;
 int set_pte_at_batched ;
 int set_pte_at_current ;
 int set_pte_at_kernel ;
 struct multicall_space xen_mc_entry (int ) ;
 int xen_mc_issue (scalar_t__) ;
 int xen_set_pte (int *,int ) ;

void xen_set_pte_at(struct mm_struct *mm, unsigned long addr,
      pte_t *ptep, pte_t pteval)
{
 ADD_STATS(set_pte_at, 1);

 ADD_STATS(set_pte_at_current, mm == current->mm);
 ADD_STATS(set_pte_at_kernel, mm == &init_mm);

 if (mm == current->mm || mm == &init_mm) {
  if (paravirt_get_lazy_mode() == PARAVIRT_LAZY_MMU) {
   struct multicall_space mcs;
   mcs = xen_mc_entry(0);

   MULTI_update_va_mapping(mcs.mc, addr, pteval, 0);
   ADD_STATS(set_pte_at_batched, 1);
   xen_mc_issue(PARAVIRT_LAZY_MMU);
   goto out;
  } else
   if (HYPERVISOR_update_va_mapping(addr, pteval, 0) == 0)
    goto out;
 }
 xen_set_pte(ptep, pteval);

out: return;
}
