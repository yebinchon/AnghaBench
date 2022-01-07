
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmcb_control_area {int int_vector; int int_ctl; } ;
struct vcpu_svm {TYPE_1__* vmcb; } ;
struct TYPE_2__ {struct vmcb_control_area control; } ;


 int VMCB_INTR ;
 int V_INTR_PRIO_MASK ;
 int V_INTR_PRIO_SHIFT ;
 int V_IRQ_MASK ;
 int mark_dirty (TYPE_1__*,int ) ;

__attribute__((used)) static inline void svm_inject_irq(struct vcpu_svm *svm, int irq)
{
 struct vmcb_control_area *control;

 control = &svm->vmcb->control;
 control->int_vector = irq;
 control->int_ctl &= ~V_INTR_PRIO_MASK;
 control->int_ctl |= V_IRQ_MASK |
  (( 0xf) << V_INTR_PRIO_SHIFT);
 mark_dirty(svm->vmcb, VMCB_INTR);
}
