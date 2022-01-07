
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int hflags; } ;
struct TYPE_6__ {int nmi_window_exits; } ;
struct TYPE_10__ {TYPE_3__ arch; TYPE_1__ stat; } ;
struct vcpu_svm {TYPE_5__ vcpu; int nmi_iret_rip; TYPE_4__* vmcb; } ;
struct TYPE_7__ {unsigned long intercept; } ;
struct TYPE_9__ {TYPE_2__ control; } ;


 int HF_IRET_MASK ;
 unsigned long INTERCEPT_IRET ;
 int VMCB_INTERCEPTS ;
 int kvm_rip_read (TYPE_5__*) ;
 int mark_dirty (TYPE_4__*,int ) ;

__attribute__((used)) static int iret_interception(struct vcpu_svm *svm)
{
 ++svm->vcpu.stat.nmi_window_exits;
 svm->vmcb->control.intercept &= ~(1UL << INTERCEPT_IRET);
 mark_dirty(svm->vmcb, VMCB_INTERCEPTS);
 svm->vcpu.arch.hflags |= HF_IRET_MASK;
 svm->nmi_iret_rip = kvm_rip_read(&svm->vcpu);
 return 1;
}
