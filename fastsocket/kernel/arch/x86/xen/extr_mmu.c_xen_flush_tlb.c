
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multicall_space {int mc; struct mmuext_op* args; } ;
struct mmuext_op {int cmd; } ;


 int DOMID_SELF ;
 int MMUEXT_TLB_FLUSH_LOCAL ;
 int MULTI_mmuext_op (int ,struct mmuext_op*,int,int *,int ) ;
 int PARAVIRT_LAZY_MMU ;
 int preempt_disable () ;
 int preempt_enable () ;
 struct multicall_space xen_mc_entry (int) ;
 int xen_mc_issue (int ) ;

__attribute__((used)) static void xen_flush_tlb(void)
{
 struct mmuext_op *op;
 struct multicall_space mcs;

 preempt_disable();

 mcs = xen_mc_entry(sizeof(*op));

 op = mcs.args;
 op->cmd = MMUEXT_TLB_FLUSH_LOCAL;
 MULTI_mmuext_op(mcs.mc, op, 1, ((void*)0), DOMID_SELF);

 xen_mc_issue(PARAVIRT_LAZY_MMU);

 preempt_enable();
}
