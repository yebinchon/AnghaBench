
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io_exits; } ;
struct kvm_vcpu {TYPE_1__ stat; } ;


 scalar_t__ EMULATE_DO_MMIO ;
 int EXIT_QUALIFICATION ;
 scalar_t__ emulate_instruction (struct kvm_vcpu*,int ) ;
 int kvm_emulate_pio (struct kvm_vcpu*,int,int,unsigned int) ;
 int skip_emulated_instruction (struct kvm_vcpu*) ;
 unsigned long vmcs_readl (int ) ;

__attribute__((used)) static int handle_io(struct kvm_vcpu *vcpu)
{
 unsigned long exit_qualification;
 int size, in, string;
 unsigned port;

 ++vcpu->stat.io_exits;
 exit_qualification = vmcs_readl(EXIT_QUALIFICATION);
 string = (exit_qualification & 16) != 0;

 if (string) {
  if (emulate_instruction(vcpu, 0) == EMULATE_DO_MMIO)
   return 0;
  return 1;
 }

 size = (exit_qualification & 7) + 1;
 in = (exit_qualification & 8) != 0;
 port = exit_qualification >> 16;

 skip_emulated_instruction(vcpu);
 return kvm_emulate_pio(vcpu, in, size, port);
}
