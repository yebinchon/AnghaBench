
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ msr_val; } ;
struct TYPE_5__ {int nmi_pending; int nmi_injected; int dr7; int dr6; int db; TYPE_1__ st; scalar_t__ switch_db_regs; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_6__ {int (* vcpu_reset ) (struct kvm_vcpu*) ;} ;


 int DR6_FIXED_1 ;
 int DR7_FIXED_1 ;
 int kvm_pmu_reset (struct kvm_vcpu*) ;
 TYPE_3__* kvm_x86_ops ;
 int kvmclock_reset (struct kvm_vcpu*) ;
 int memset (int ,int ,int) ;
 int stub1 (struct kvm_vcpu*) ;

int kvm_arch_vcpu_reset(struct kvm_vcpu *vcpu)
{
 vcpu->arch.nmi_pending = 0;
 vcpu->arch.nmi_injected = 0;

 vcpu->arch.switch_db_regs = 0;
 vcpu->arch.st.msr_val = 0;
 memset(vcpu->arch.db, 0, sizeof(vcpu->arch.db));
 vcpu->arch.dr6 = DR6_FIXED_1;
 vcpu->arch.dr7 = DR7_FIXED_1;

 kvmclock_reset(vcpu);
 kvm_pmu_reset(vcpu);

 return kvm_x86_ops->vcpu_reset(vcpu);
}
