
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ native_read_tsc () ;

__attribute__((used)) static u64 vmx_compute_tsc_offset(struct kvm_vcpu *vcpu, u64 target_tsc)
{
 return target_tsc - native_read_tsc();
}
