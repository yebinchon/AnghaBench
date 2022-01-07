
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct kvm_vcpu {struct kvm* kvm; } ;
struct TYPE_2__ {int hv_hypercall; int hv_guest_os_id; } ;
struct kvm {TYPE_1__ arch; } ;




 int pr_unimpl (struct kvm_vcpu*,char*,int) ;

__attribute__((used)) static int get_msr_hyperv_pw(struct kvm_vcpu *vcpu, u32 msr, u64 *pdata)
{
        u64 data = 0;
        struct kvm *kvm = vcpu->kvm;

        switch (msr) {
        case 129:
                data = kvm->arch.hv_guest_os_id;
                break;
        case 128:
                data = kvm->arch.hv_hypercall;
                break;
        default:
                pr_unimpl(vcpu, "Hyper-V unhandled rdmsr: 0x%x\n", msr);
                return 1;
        }

        *pdata = data;
        return 0;
}
