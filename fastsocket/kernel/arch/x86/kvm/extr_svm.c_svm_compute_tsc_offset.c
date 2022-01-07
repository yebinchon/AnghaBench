
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct kvm_vcpu {int dummy; } ;


 int native_read_tsc () ;
 scalar_t__ svm_scale_tsc (struct kvm_vcpu*,int ) ;

__attribute__((used)) static u64 svm_compute_tsc_offset(struct kvm_vcpu *vcpu, u64 target_tsc)
{
 u64 tsc;

 tsc = svm_scale_tsc(vcpu, native_read_tsc());

 return target_tsc - tsc;
}
