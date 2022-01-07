
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int vcpu; } ;


 int X86_FEATURE_NRIPS ;
 int emulate_on_interception (struct vcpu_svm*) ;
 int kvm_inject_gp (int *,int ) ;
 int kvm_rdpmc (int *) ;
 int skip_emulated_instruction (int *) ;
 int static_cpu_has (int ) ;

__attribute__((used)) static int rdpmc_interception(struct vcpu_svm *svm)
{
 int err;

 if (!static_cpu_has(X86_FEATURE_NRIPS))
  return emulate_on_interception(svm);

 err = kvm_rdpmc(&svm->vcpu);
 if (err)
  kvm_inject_gp(&svm->vcpu, 0);
 else
  skip_emulated_instruction(&svm->vcpu);

 return 1;
}
