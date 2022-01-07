
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u64 ;
struct TYPE_5__ {void* ps; void* vaddr; int rr; } ;
struct TYPE_6__ {TYPE_2__ ptc_g_data; } ;
struct exit_ctl_data {TYPE_3__ u; int exit_reason; } ;
struct TYPE_4__ {struct exit_ctl_data exit_data; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EXIT_REASON_PTC_G ;
 int local_irq_restore (long) ;
 int local_irq_save (long) ;
 int vcpu_get_rr (struct kvm_vcpu*,void*) ;
 int vcpu_ptc_l (struct kvm_vcpu*,void*,void*) ;
 int vmm_transition (struct kvm_vcpu*) ;

void vcpu_ptc_ga(struct kvm_vcpu *vcpu, u64 va, u64 ps)
{
 struct exit_ctl_data *p = &vcpu->arch.exit_data;
 long psr;
 local_irq_save(psr);
 p->exit_reason = EXIT_REASON_PTC_G;

 p->u.ptc_g_data.rr = vcpu_get_rr(vcpu, va);
 p->u.ptc_g_data.vaddr = va;
 p->u.ptc_g_data.ps = ps;
 vmm_transition(vcpu);

 vcpu_ptc_l(vcpu, va, ps);
 local_irq_restore(psr);
}
