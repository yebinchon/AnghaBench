
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_pio_request {long size; long cur_count; long count; scalar_t__ in; scalar_t__ down; scalar_t__ rep; int string; } ;
struct TYPE_2__ {int pio_data; struct kvm_pio_request pio; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int VCPU_REGS_RAX ;
 int VCPU_REGS_RCX ;
 int VCPU_REGS_RDI ;
 int VCPU_REGS_RSI ;
 unsigned long kvm_register_read (struct kvm_vcpu*,int ) ;
 int kvm_register_write (struct kvm_vcpu*,int ,unsigned long) ;
 int memcpy (unsigned long*,int ,long) ;
 int pio_copy_data (struct kvm_vcpu*) ;

int complete_pio(struct kvm_vcpu *vcpu)
{
 struct kvm_pio_request *io = &vcpu->arch.pio;
 long delta;
 int r;
 unsigned long val;

 if (!io->string) {
  if (io->in) {
   val = kvm_register_read(vcpu, VCPU_REGS_RAX);
   memcpy(&val, vcpu->arch.pio_data, io->size);
   kvm_register_write(vcpu, VCPU_REGS_RAX, val);
  }
 } else {
  if (io->in) {
   r = pio_copy_data(vcpu);
   if (r)
    goto out;
  }

  delta = 1;
  if (io->rep) {
   delta *= io->cur_count;




   val = kvm_register_read(vcpu, VCPU_REGS_RCX);
   val -= delta;
   kvm_register_write(vcpu, VCPU_REGS_RCX, val);
  }
  if (io->down)
   delta = -delta;
  delta *= io->size;
  if (io->in) {
   val = kvm_register_read(vcpu, VCPU_REGS_RDI);
   val += delta;
   kvm_register_write(vcpu, VCPU_REGS_RDI, val);
  } else {
   val = kvm_register_read(vcpu, VCPU_REGS_RSI);
   val += delta;
   kvm_register_write(vcpu, VCPU_REGS_RSI, val);
  }
 }
out:
 io->count -= io->cur_count;
 io->cur_count = 0;

 return 0;
}
