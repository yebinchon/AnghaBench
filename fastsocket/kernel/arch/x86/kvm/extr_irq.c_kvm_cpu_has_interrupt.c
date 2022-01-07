
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pending; } ;
struct TYPE_4__ {TYPE_1__ interrupt; } ;
struct kvm_vcpu {int kvm; TYPE_2__ arch; } ;
struct kvm_pic {int output; } ;


 int irqchip_in_kernel (int ) ;
 scalar_t__ kvm_apic_accept_pic_intr (struct kvm_vcpu*) ;
 int kvm_apic_has_interrupt (struct kvm_vcpu*) ;
 struct kvm_pic* pic_irqchip (int ) ;

int kvm_cpu_has_interrupt(struct kvm_vcpu *v)
{
 struct kvm_pic *s;

 if (!irqchip_in_kernel(v->kvm))
  return v->arch.interrupt.pending;

 if (kvm_apic_has_interrupt(v) == -1) {
  if (kvm_apic_accept_pic_intr(v)) {
   s = pic_irqchip(v->kvm);
   return s->output;
  } else
   return 0;
 }
 return 1;
}
