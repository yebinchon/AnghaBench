
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vcpu_svm {scalar_t__ tsc_ratio; } ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ TSC_RATIO_DEFAULT ;
 int __scale_tsc (scalar_t__,int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static u64 svm_scale_tsc(struct kvm_vcpu *vcpu, u64 tsc)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 u64 _tsc = tsc;

 if (svm->tsc_ratio != TSC_RATIO_DEFAULT)
  _tsc = __scale_tsc(svm->tsc_ratio, tsc);

 return _tsc;
}
