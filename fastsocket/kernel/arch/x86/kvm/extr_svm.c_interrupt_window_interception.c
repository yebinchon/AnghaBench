
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int irq_window_exits; } ;
struct TYPE_8__ {TYPE_1__ stat; int kvm; struct kvm_run* run; } ;
struct vcpu_svm {TYPE_4__ vcpu; TYPE_3__* vmcb; } ;
struct kvm_run {int exit_reason; scalar_t__ request_interrupt_window; } ;
struct TYPE_6__ {int int_ctl; } ;
struct TYPE_7__ {TYPE_2__ control; } ;


 int KVM_EXIT_IRQ_WINDOW_OPEN ;
 int VMCB_INTR ;
 int V_IRQ_MASK ;
 int irqchip_in_kernel (int ) ;
 int kvm_cpu_has_interrupt (TYPE_4__*) ;
 int mark_dirty (TYPE_3__*,int ) ;
 int svm_clear_vintr (struct vcpu_svm*) ;

__attribute__((used)) static int interrupt_window_interception(struct vcpu_svm *svm)
{
 struct kvm_run *kvm_run = svm->vcpu.run;

 svm_clear_vintr(svm);
 svm->vmcb->control.int_ctl &= ~V_IRQ_MASK;
 mark_dirty(svm->vmcb, VMCB_INTR);




 if (!irqchip_in_kernel(svm->vcpu.kvm) &&
     kvm_run->request_interrupt_window &&
     !kvm_cpu_has_interrupt(&svm->vcpu)) {
  ++svm->vcpu.stat.irq_window_exits;
  kvm_run->exit_reason = KVM_EXIT_IRQ_WINDOW_OPEN;
  return 0;
 }

 return 1;
}
