
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct kvm_vcpu {int guest_debug; } ;
struct TYPE_4__ {int event_exit_inst_len; } ;
struct TYPE_5__ {TYPE_1__ arch; } ;
struct TYPE_6__ {TYPE_2__ vcpu; } ;







 scalar_t__ EMULATE_DONE ;

 int KVM_GUESTDBG_SINGLESTEP ;
 int KVM_GUESTDBG_USE_HW_BP ;
 int KVM_GUESTDBG_USE_SW_BP ;




 int VM_EXIT_INSTRUCTION_LEN ;
 scalar_t__ emulate_instruction (struct kvm_vcpu*,int ) ;
 int kvm_queue_exception (struct kvm_vcpu*,int) ;
 TYPE_3__* to_vmx (struct kvm_vcpu*) ;
 int vmcs_read32 (int ) ;

__attribute__((used)) static int handle_rmode_exception(struct kvm_vcpu *vcpu,
      int vec, u32 err_code)
{




 if (((vec == 132) || (vec == 129)) && err_code == 0)
  if (emulate_instruction(vcpu, 0) == EMULATE_DONE)
   return 1;





 switch (vec) {
 case 135:
  if (vcpu->guest_debug &
      (KVM_GUESTDBG_SINGLESTEP | KVM_GUESTDBG_USE_HW_BP))
   return 0;
  kvm_queue_exception(vcpu, vec);
  return 1;
 case 137:




  to_vmx(vcpu)->vcpu.arch.event_exit_inst_len =
   vmcs_read32(VM_EXIT_INSTRUCTION_LEN);
  if (vcpu->guest_debug & KVM_GUESTDBG_USE_SW_BP)
   return 0;

 case 134:
 case 130:
 case 136:
 case 128:
 case 133:
 case 129:
 case 132:
 case 131:
  kvm_queue_exception(vcpu, vec);
  return 1;
 }
 return 0;
}
