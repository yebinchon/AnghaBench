
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct vcpu_svm {int tsc_ratio; } ;
struct TYPE_2__ {scalar_t__ virtual_tsc_khz; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int SVM_FEATURE_TSC_RATE ;
 int TSC_RATIO_DEFAULT ;
 int TSC_RATIO_RSVD ;
 int WARN_ONCE (int,char*,scalar_t__) ;
 int do_div (int,int ) ;
 int svm_has (int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;
 int tsc_khz ;

__attribute__((used)) static void svm_set_tsc_khz(struct kvm_vcpu *vcpu, u32 user_tsc_khz)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 u64 ratio;
 u64 khz;


 if (!svm_has(SVM_FEATURE_TSC_RATE))
  return;


 if (user_tsc_khz == 0) {
  vcpu->arch.virtual_tsc_khz = 0;
  svm->tsc_ratio = TSC_RATIO_DEFAULT;
  return;
 }

 khz = user_tsc_khz;


 ratio = khz << 32;
 do_div(ratio, tsc_khz);

 if (ratio == 0 || ratio & TSC_RATIO_RSVD) {
  WARN_ONCE(1, "Invalid TSC ratio - virtual-tsc-khz=%u\n",
    user_tsc_khz);
  return;
 }
 vcpu->arch.virtual_tsc_khz = user_tsc_khz;
 svm->tsc_ratio = ratio;
}
