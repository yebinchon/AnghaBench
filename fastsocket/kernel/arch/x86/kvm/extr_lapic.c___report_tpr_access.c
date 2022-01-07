
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int requests; struct kvm_run* run; } ;
struct TYPE_2__ {int is_write; int rip; } ;
struct kvm_run {TYPE_1__ tpr_access; } ;
struct kvm_lapic {struct kvm_vcpu* vcpu; } ;


 int KVM_REQ_REPORT_TPR_ACCESS ;
 int kvm_rip_read (struct kvm_vcpu*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void __report_tpr_access(struct kvm_lapic *apic, bool write)
{
 struct kvm_vcpu *vcpu = apic->vcpu;
 struct kvm_run *run = vcpu->run;

 set_bit(KVM_REQ_REPORT_TPR_ACCESS, &vcpu->requests);
 run->tpr_access.rip = kvm_rip_read(vcpu);
 run->tpr_access.is_write = write;
}
