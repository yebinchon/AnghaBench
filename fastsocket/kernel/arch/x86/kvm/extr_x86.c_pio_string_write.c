
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_pio_request {int cur_count; int size; int port; } ;
struct TYPE_2__ {void* pio_data; struct kvm_pio_request pio; } ;
struct kvm_vcpu {int kvm; TYPE_1__ arch; } ;


 int EOPNOTSUPP ;
 int KVM_PIO_BUS ;
 scalar_t__ kvm_io_bus_write (int ,int ,int ,int ,void*) ;

__attribute__((used)) static int pio_string_write(struct kvm_vcpu *vcpu)
{
 struct kvm_pio_request *io = &vcpu->arch.pio;
 void *pd = vcpu->arch.pio_data;
 int i, r = 0;

 for (i = 0; i < io->cur_count; i++) {
  if (kvm_io_bus_write(vcpu->kvm, KVM_PIO_BUS,
         io->port, io->size, pd)) {
   r = -EOPNOTSUPP;
   break;
  }
  pd += io->size;
 }
 return r;
}
