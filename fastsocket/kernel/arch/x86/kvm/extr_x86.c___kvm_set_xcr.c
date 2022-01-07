
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_3__ {int xcr0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {scalar_t__ (* get_cpl ) (struct kvm_vcpu*) ;} ;


 scalar_t__ XCR_XFEATURE_ENABLED_MASK ;
 int XSTATE_FP ;
 int XSTATE_SSE ;
 int XSTATE_YMM ;
 int host_xcr0 ;
 int kvm_put_guest_xcr0 (struct kvm_vcpu*) ;
 TYPE_2__* kvm_x86_ops ;
 scalar_t__ stub1 (struct kvm_vcpu*) ;

int __kvm_set_xcr(struct kvm_vcpu *vcpu, u32 index, u64 xcr)
{
 u64 xcr0;


 if (index != XCR_XFEATURE_ENABLED_MASK)
  return 1;
 xcr0 = xcr;
 if (kvm_x86_ops->get_cpl(vcpu) != 0)
  return 1;
 if (!(xcr0 & XSTATE_FP))
  return 1;
 if ((xcr0 & XSTATE_YMM) && !(xcr0 & XSTATE_SSE))
  return 1;
 if (xcr0 & ~host_xcr0)
  return 1;
 kvm_put_guest_xcr0(vcpu);
 vcpu->arch.xcr0 = xcr0;
 return 0;
}
