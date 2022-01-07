
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct kvm_pt_regs {int dummy; } ;
struct TYPE_2__ {scalar_t__ cpl; } ;


 unsigned long DOMN_PAL_REQUEST ;
 unsigned long DOMN_SAL_REQUEST ;
 struct kvm_vcpu* current_vcpu ;
 int get_pal_call_result (struct kvm_vcpu*) ;
 int get_sal_call_result (struct kvm_vcpu*) ;
 TYPE_1__* ia64_psr (struct kvm_pt_regs*) ;
 int local_irq_restore (long) ;
 int local_irq_save (long) ;
 int reflect_interruption (unsigned long,unsigned long,unsigned long,int,struct kvm_pt_regs*) ;
 int set_pal_call_data (struct kvm_vcpu*) ;
 int set_sal_call_data (struct kvm_vcpu*) ;
 int vcpu_increment_iip (struct kvm_vcpu*) ;
 int vmm_transition (struct kvm_vcpu*) ;

void kvm_ia64_handle_break(unsigned long ifa, struct kvm_pt_regs *regs,
  unsigned long isr, unsigned long iim)
{
 struct kvm_vcpu *v = current_vcpu;
 long psr;

 if (ia64_psr(regs)->cpl == 0) {

  if (iim == DOMN_PAL_REQUEST) {
   local_irq_save(psr);
   set_pal_call_data(v);
   vmm_transition(v);
   get_pal_call_result(v);
   vcpu_increment_iip(v);
   local_irq_restore(psr);
   return;
  } else if (iim == DOMN_SAL_REQUEST) {
   local_irq_save(psr);
   set_sal_call_data(v);
   vmm_transition(v);
   get_sal_call_result(v);
   vcpu_increment_iip(v);
   local_irq_restore(psr);
   return;
  }
 }
 reflect_interruption(ifa, isr, iim, 11, regs);
}
