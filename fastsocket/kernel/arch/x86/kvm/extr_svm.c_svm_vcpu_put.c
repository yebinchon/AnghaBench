
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vcpu_svm {int * host_user_msrs; } ;
struct TYPE_2__ {int host_state_reload; } ;
struct kvm_vcpu {TYPE_1__ stat; } ;


 int NR_HOST_SAVE_USER_MSRS ;
 int * host_save_user_msrs ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void svm_vcpu_put(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 int i;

 ++vcpu->stat.host_state_reload;
 for (i = 0; i < NR_HOST_SAVE_USER_MSRS; i++)
  wrmsrl(host_save_user_msrs[i], svm->host_user_msrs[i]);
}
