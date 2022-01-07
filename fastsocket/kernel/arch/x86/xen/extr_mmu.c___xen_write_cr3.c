
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct multicall_space {int mc; struct mmuext_op* args; } ;
struct TYPE_2__ {unsigned long mfn; } ;
struct mmuext_op {TYPE_1__ arg1; int cmd; } ;


 int DOMID_SELF ;
 int MMUEXT_NEW_BASEPTR ;
 int MMUEXT_NEW_USER_BASEPTR ;
 int MULTI_mmuext_op (int ,struct mmuext_op*,int,int *,int ) ;
 int PFN_DOWN (unsigned long) ;
 int WARN_ON (int) ;
 struct multicall_space __xen_mc_entry (int) ;
 int percpu_write (int ,unsigned long) ;
 unsigned long pfn_to_mfn (int ) ;
 int set_current_cr3 ;
 int xen_cr3 ;
 int xen_mc_callback (int ,void*) ;

__attribute__((used)) static void __xen_write_cr3(bool kernel, unsigned long cr3)
{
 struct mmuext_op *op;
 struct multicall_space mcs;
 unsigned long mfn;

 if (cr3)
  mfn = pfn_to_mfn(PFN_DOWN(cr3));
 else
  mfn = 0;

 WARN_ON(mfn == 0 && kernel);

 mcs = __xen_mc_entry(sizeof(*op));

 op = mcs.args;
 op->cmd = kernel ? MMUEXT_NEW_BASEPTR : MMUEXT_NEW_USER_BASEPTR;
 op->arg1.mfn = mfn;

 MULTI_mmuext_op(mcs.mc, op, 1, ((void*)0), DOMID_SELF);

 if (kernel) {
  percpu_write(xen_cr3, cr3);



  xen_mc_callback(set_current_cr3, (void *)cr3);
 }
}
