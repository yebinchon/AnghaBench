
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
 int kvm_io_bus_read (int ,int ,int ,int,void*) ;
 int kvm_iodevice_read (int *,int ,int,void*) ;

__attribute__((used)) static int vcpu_mmio_read(struct kvm_vcpu *vcpu, gpa_t addr, int len, void *v)
{
 if (vcpu->arch.apic &&
     !kvm_iodevice_read(&vcpu->arch.apic->dev, addr, len, v))
  return 0;

 return kvm_io_bus_read(vcpu->kvm, KVM_MMIO_BUS, addr, len, v);
}
