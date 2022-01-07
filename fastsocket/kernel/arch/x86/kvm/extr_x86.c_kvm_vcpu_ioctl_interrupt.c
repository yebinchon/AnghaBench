
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int kvm; } ;
struct kvm_interrupt {int irq; } ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ irqchip_in_kernel (int ) ;
 int kvm_queue_interrupt (struct kvm_vcpu*,int,int) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_vcpu_ioctl_interrupt(struct kvm_vcpu *vcpu,
        struct kvm_interrupt *irq)
{
 if (irq->irq < 0 || irq->irq >= 256)
  return -EINVAL;
 if (irqchip_in_kernel(vcpu->kvm))
  return -ENXIO;
 vcpu_load(vcpu);

 kvm_queue_interrupt(vcpu, irq->irq, 0);

 vcpu_put(vcpu);

 return 0;
}
