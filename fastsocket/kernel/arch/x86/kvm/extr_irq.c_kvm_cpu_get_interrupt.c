
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nr; } ;
struct TYPE_4__ {TYPE_1__ interrupt; } ;
struct kvm_vcpu {int kvm; TYPE_2__ arch; } ;
struct kvm_pic {scalar_t__ output; } ;


 int irqchip_in_kernel (int ) ;
 scalar_t__ kvm_apic_accept_pic_intr (struct kvm_vcpu*) ;
 int kvm_get_apic_interrupt (struct kvm_vcpu*) ;
 int kvm_pic_read_irq (int ) ;
 struct kvm_pic* pic_irqchip (int ) ;

int kvm_cpu_get_interrupt(struct kvm_vcpu *v)
{
 struct kvm_pic *s;
 int vector;

 if (!irqchip_in_kernel(v->kvm))
  return v->arch.interrupt.nr;

 vector = kvm_get_apic_interrupt(v);
 if (vector == -1) {
  if (kvm_apic_accept_pic_intr(v)) {
   s = pic_irqchip(v->kvm);
   s->output = 0;
   vector = kvm_pic_read_irq(v->kvm);
  }
 }
 return vector;
}
