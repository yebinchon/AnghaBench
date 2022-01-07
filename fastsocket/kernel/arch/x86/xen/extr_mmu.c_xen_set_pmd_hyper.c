
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmu_update {int val; int ptr; } ;
typedef int pmd_t ;
struct TYPE_2__ {int maddr; } ;


 int ADD_STATS (int ,int) ;
 scalar_t__ PARAVIRT_LAZY_MMU ;
 TYPE_1__ arbitrary_virt_to_machine (int *) ;
 scalar_t__ paravirt_get_lazy_mode () ;
 int pmd_update_batched ;
 int pmd_val_ma (int ) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int xen_extend_mmu_update (struct mmu_update*) ;
 int xen_mc_batch () ;
 int xen_mc_issue (scalar_t__) ;

void xen_set_pmd_hyper(pmd_t *ptr, pmd_t val)
{
 struct mmu_update u;

 preempt_disable();

 xen_mc_batch();


 u.ptr = arbitrary_virt_to_machine(ptr).maddr;
 u.val = pmd_val_ma(val);
 xen_extend_mmu_update(&u);

 ADD_STATS(pmd_update_batched, paravirt_get_lazy_mode() == PARAVIRT_LAZY_MMU);

 xen_mc_issue(PARAVIRT_LAZY_MMU);

 preempt_enable();
}
