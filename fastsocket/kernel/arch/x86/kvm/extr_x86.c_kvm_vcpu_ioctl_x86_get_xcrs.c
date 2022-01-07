
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_xcrs {int nr_xcrs; TYPE_2__* xcrs; scalar_t__ flags; } ;
struct TYPE_3__ {int xcr0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int value; int xcr; } ;


 int XCR_XFEATURE_ENABLED_MASK ;
 int cpu_has_xsave ;

__attribute__((used)) static void kvm_vcpu_ioctl_x86_get_xcrs(struct kvm_vcpu *vcpu,
     struct kvm_xcrs *guest_xcrs)
{
 if (!cpu_has_xsave) {
  guest_xcrs->nr_xcrs = 0;
  return;
 }

 guest_xcrs->nr_xcrs = 1;
 guest_xcrs->flags = 0;
 guest_xcrs->xcrs[0].xcr = XCR_XFEATURE_ENABLED_MASK;
 guest_xcrs->xcrs[0].value = vcpu->arch.xcr0;
}
