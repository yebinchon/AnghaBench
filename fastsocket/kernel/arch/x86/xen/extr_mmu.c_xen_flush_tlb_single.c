
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct multicall_space {int mc; struct mmuext_op* args; } ;
struct TYPE_2__ {unsigned long linear_addr; } ;
struct mmuext_op {TYPE_1__ arg1; int cmd; } ;


 int DOMID_SELF ;
 int MMUEXT_INVLPG_LOCAL ;
 int MULTI_mmuext_op (int ,struct mmuext_op*,int,int *,int ) ;
 unsigned long PAGE_MASK ;
 int PARAVIRT_LAZY_MMU ;
 int preempt_disable () ;
 int preempt_enable () ;
 struct multicall_space xen_mc_entry (int) ;
 int xen_mc_issue (int ) ;

__attribute__((used)) static void xen_flush_tlb_single(unsigned long addr)
{
 struct mmuext_op *op;
 struct multicall_space mcs;

 preempt_disable();

 mcs = xen_mc_entry(sizeof(*op));
 op = mcs.args;
 op->cmd = MMUEXT_INVLPG_LOCAL;
 op->arg1.linear_addr = addr & PAGE_MASK;
 MULTI_mmuext_op(mcs.mc, op, 1, ((void*)0), DOMID_SELF);

 xen_mc_issue(PARAVIRT_LAZY_MMU);

 preempt_enable();
}
