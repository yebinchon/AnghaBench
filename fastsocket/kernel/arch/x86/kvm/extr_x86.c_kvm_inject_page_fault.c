
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {unsigned long cr2; } ;
struct TYPE_3__ {int pf_guest; } ;
struct kvm_vcpu {TYPE_2__ arch; TYPE_1__ stat; } ;


 int PF_VECTOR ;
 int kvm_queue_exception_e (struct kvm_vcpu*,int ,int ) ;

void kvm_inject_page_fault(struct kvm_vcpu *vcpu, unsigned long addr,
      u32 error_code)
{
 ++vcpu->stat.pf_guest;
 vcpu->arch.cr2 = addr;
 kvm_queue_exception_e(vcpu, PF_VECTOR, error_code);
}
