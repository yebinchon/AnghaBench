
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rip; int vector; scalar_t__ pending; } ;
struct TYPE_4__ {TYPE_1__ irq; } ;
struct vcpu_vmx {int idt_vectoring_info; TYPE_2__ rmode; int vcpu; } ;


 int INTR_TYPE_EXT_INTR ;
 int VECTORING_INFO_TYPE_MASK ;
 int VECTORING_INFO_VALID_MASK ;
 scalar_t__ kvm_rip_read (int *) ;
 int kvm_rip_write (int *,scalar_t__) ;

__attribute__((used)) static void fixup_rmode_irq(struct vcpu_vmx *vmx)
{
 vmx->rmode.irq.pending = 0;
 if (kvm_rip_read(&vmx->vcpu) + 1 != vmx->rmode.irq.rip)
  return;
 kvm_rip_write(&vmx->vcpu, vmx->rmode.irq.rip);
 if (vmx->idt_vectoring_info & VECTORING_INFO_VALID_MASK) {
  vmx->idt_vectoring_info &= ~VECTORING_INFO_TYPE_MASK;
  vmx->idt_vectoring_info |= INTR_TYPE_EXT_INTR;
  return;
 }
 vmx->idt_vectoring_info =
  VECTORING_INFO_VALID_MASK
  | INTR_TYPE_EXT_INTR
  | vmx->rmode.irq.vector;
}
