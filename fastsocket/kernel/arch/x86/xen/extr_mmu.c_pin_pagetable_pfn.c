
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mfn; } ;
struct mmuext_op {unsigned int cmd; TYPE_1__ arg1; } ;


 int BUG () ;
 int DOMID_SELF ;
 scalar_t__ HYPERVISOR_mmuext_op (struct mmuext_op*,int,int *,int ) ;
 int pfn_to_mfn (unsigned long) ;

__attribute__((used)) static void pin_pagetable_pfn(unsigned cmd, unsigned long pfn)
{
 struct mmuext_op op;
 op.cmd = cmd;
 op.arg1.mfn = pfn_to_mfn(pfn);
 if (HYPERVISOR_mmuext_op(&op, 1, ((void*)0), DOMID_SELF))
  BUG();
}
