
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* apic; } ;
struct kvm_vcpu {int kvm; TYPE_2__ arch; } ;
typedef int gpa_t ;
struct TYPE_3__ {int dev; } ;


 int KVM_MMIO_BUS ;
 int kvm_io_bus_write (int ,int ,int ,int,void const*) ;
 int kvm_iodevice_write (int *,int ,int,void const*) ;

__attribute__((used)) static int vcpu_mmio_write(struct kvm_vcpu *vcpu, gpa_t addr, int len,
      const void *v)
{
 if (vcpu->arch.apic &&
     !kvm_iodevice_write(&vcpu->arch.apic->dev, addr, len, v))
  return 0;

 return kvm_io_bus_write(vcpu->kvm, KVM_MMIO_BUS, addr, len, v);
}
