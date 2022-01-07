
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ia64_rr {scalar_t__ val; int rid; int ps; } ;
typedef scalar_t__ u64 ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ vcpu_get_rr (struct kvm_vcpu*,scalar_t__) ;

__attribute__((used)) static u64 vcpu_get_itir_on_fault(struct kvm_vcpu *vcpu, u64 ifa)
{
 union ia64_rr rr, rr1;

 rr.val = vcpu_get_rr(vcpu, ifa);
 rr1.val = 0;
 rr1.ps = rr.ps;
 rr1.rid = rr.rid;
 return (rr1.val);
}
