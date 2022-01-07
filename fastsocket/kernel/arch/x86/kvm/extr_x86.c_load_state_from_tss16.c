
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tss_segment_16 {int flag; int ds; int ss; int cs; int es; int ldt; int di; int si; int bp; int sp; int bx; int dx; int cx; int ax; int ip; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int (* set_rflags ) (struct kvm_vcpu*,int) ;} ;


 int VCPU_REGS_RAX ;
 int VCPU_REGS_RBP ;
 int VCPU_REGS_RBX ;
 int VCPU_REGS_RCX ;
 int VCPU_REGS_RDI ;
 int VCPU_REGS_RDX ;
 int VCPU_REGS_RSI ;
 int VCPU_REGS_RSP ;
 int VCPU_SREG_CS ;
 int VCPU_SREG_DS ;
 int VCPU_SREG_ES ;
 int VCPU_SREG_LDTR ;
 int VCPU_SREG_SS ;
 scalar_t__ kvm_load_segment_descriptor (struct kvm_vcpu*,int ,int ) ;
 int kvm_load_segment_selector (struct kvm_vcpu*,int ,int ) ;
 int kvm_register_write (struct kvm_vcpu*,int ,int ) ;
 int kvm_rip_write (struct kvm_vcpu*,int ) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,int) ;

__attribute__((used)) static int load_state_from_tss16(struct kvm_vcpu *vcpu,
     struct tss_segment_16 *tss)
{
 kvm_rip_write(vcpu, tss->ip);
 kvm_x86_ops->set_rflags(vcpu, tss->flag | 2);
 kvm_register_write(vcpu, VCPU_REGS_RAX, tss->ax);
 kvm_register_write(vcpu, VCPU_REGS_RCX, tss->cx);
 kvm_register_write(vcpu, VCPU_REGS_RDX, tss->dx);
 kvm_register_write(vcpu, VCPU_REGS_RBX, tss->bx);
 kvm_register_write(vcpu, VCPU_REGS_RSP, tss->sp);
 kvm_register_write(vcpu, VCPU_REGS_RBP, tss->bp);
 kvm_register_write(vcpu, VCPU_REGS_RSI, tss->si);
 kvm_register_write(vcpu, VCPU_REGS_RDI, tss->di);





 kvm_load_segment_selector(vcpu, tss->ldt, VCPU_SREG_LDTR);
 kvm_load_segment_selector(vcpu, tss->es, VCPU_SREG_ES);
 kvm_load_segment_selector(vcpu, tss->cs, VCPU_SREG_CS);
 kvm_load_segment_selector(vcpu, tss->ss, VCPU_SREG_SS);
 kvm_load_segment_selector(vcpu, tss->ds, VCPU_SREG_DS);





 if (kvm_load_segment_descriptor(vcpu, tss->ldt, VCPU_SREG_LDTR))
  return 1;

 if (kvm_load_segment_descriptor(vcpu, tss->es, VCPU_SREG_ES))
  return 1;

 if (kvm_load_segment_descriptor(vcpu, tss->cs, VCPU_SREG_CS))
  return 1;

 if (kvm_load_segment_descriptor(vcpu, tss->ss, VCPU_SREG_SS))
  return 1;

 if (kvm_load_segment_descriptor(vcpu, tss->ds, VCPU_SREG_DS))
  return 1;
 return 0;
}
