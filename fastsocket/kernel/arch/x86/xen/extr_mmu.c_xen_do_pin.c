
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct multicall_space {int mc; struct mmuext_op* args; } ;
struct TYPE_2__ {int mfn; } ;
struct mmuext_op {unsigned int cmd; TYPE_1__ arg1; } ;


 int DOMID_SELF ;
 int MULTI_mmuext_op (int ,struct mmuext_op*,int,int *,int ) ;
 struct multicall_space __xen_mc_entry (int) ;
 int pfn_to_mfn (unsigned long) ;

__attribute__((used)) static void xen_do_pin(unsigned level, unsigned long pfn)
{
 struct mmuext_op *op;
 struct multicall_space mcs;

 mcs = __xen_mc_entry(sizeof(*op));
 op = mcs.args;
 op->cmd = level;
 op->arg1.mfn = pfn_to_mfn(pfn);
 MULTI_mmuext_op(mcs.mc, op, 1, ((void*)0), DOMID_SELF);
}
