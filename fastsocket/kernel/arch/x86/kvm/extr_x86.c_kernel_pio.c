
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; int port; scalar_t__ in; } ;
struct TYPE_3__ {TYPE_2__ pio; } ;
struct kvm_vcpu {TYPE_1__ arch; int kvm; } ;


 int KVM_PIO_BUS ;
 int kvm_io_bus_read (int ,int ,int ,int ,void*) ;
 int kvm_io_bus_write (int ,int ,int ,int ,void*) ;

__attribute__((used)) static int kernel_pio(struct kvm_vcpu *vcpu, void *pd)
{

 int r;

 if (vcpu->arch.pio.in)
  r = kvm_io_bus_read(vcpu->kvm, KVM_PIO_BUS, vcpu->arch.pio.port,
        vcpu->arch.pio.size, pd);
 else
  r = kvm_io_bus_write(vcpu->kvm, KVM_PIO_BUS,
         vcpu->arch.pio.port, vcpu->arch.pio.size,
         pd);
 return r;
}
