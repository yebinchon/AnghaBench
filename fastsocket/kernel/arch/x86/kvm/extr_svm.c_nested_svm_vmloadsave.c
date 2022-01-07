
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sysenter_eip; int sysenter_esp; int sysenter_cs; int sfmask; int cstar; int lstar; int star; int kernel_gs_base; int ldtr; int tr; int gs; int fs; } ;
struct vmcb {TYPE_1__ save; } ;



__attribute__((used)) static void nested_svm_vmloadsave(struct vmcb *from_vmcb, struct vmcb *to_vmcb)
{
 to_vmcb->save.fs = from_vmcb->save.fs;
 to_vmcb->save.gs = from_vmcb->save.gs;
 to_vmcb->save.tr = from_vmcb->save.tr;
 to_vmcb->save.ldtr = from_vmcb->save.ldtr;
 to_vmcb->save.kernel_gs_base = from_vmcb->save.kernel_gs_base;
 to_vmcb->save.star = from_vmcb->save.star;
 to_vmcb->save.lstar = from_vmcb->save.lstar;
 to_vmcb->save.cstar = from_vmcb->save.cstar;
 to_vmcb->save.sfmask = from_vmcb->save.sfmask;
 to_vmcb->save.sysenter_cs = from_vmcb->save.sysenter_cs;
 to_vmcb->save.sysenter_esp = from_vmcb->save.sysenter_esp;
 to_vmcb->save.sysenter_eip = from_vmcb->save.sysenter_eip;
}
