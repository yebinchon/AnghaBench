
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct multicall_space {int mc; struct mmuext_op* args; } ;
struct TYPE_4__ {unsigned int nr_ents; } ;
struct TYPE_3__ {unsigned long linear_addr; } ;
struct mmuext_op {TYPE_2__ arg2; TYPE_1__ arg1; int cmd; } ;


 int DOMID_SELF ;
 int MMUEXT_SET_LDT ;
 int MULTI_mmuext_op (int ,struct mmuext_op*,int,int *,int ) ;
 int PARAVIRT_LAZY_CPU ;
 struct multicall_space xen_mc_entry (int) ;
 int xen_mc_issue (int ) ;

__attribute__((used)) static void xen_set_ldt(const void *addr, unsigned entries)
{
 struct mmuext_op *op;
 struct multicall_space mcs = xen_mc_entry(sizeof(*op));

 op = mcs.args;
 op->cmd = MMUEXT_SET_LDT;
 op->arg1.linear_addr = (unsigned long)addr;
 op->arg2.nr_ents = entries;

 MULTI_mmuext_op(mcs.mc, op, 1, ((void*)0), DOMID_SELF);

 xen_mc_issue(PARAVIRT_LAZY_CPU);
}
