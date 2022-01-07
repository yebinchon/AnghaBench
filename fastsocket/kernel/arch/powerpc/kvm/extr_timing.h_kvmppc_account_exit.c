
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvmppc_account_exit_stat (struct kvm_vcpu*,int) ;
 int kvmppc_set_exit_type (struct kvm_vcpu*,int) ;

__attribute__((used)) static inline void kvmppc_account_exit(struct kvm_vcpu *vcpu, int type)
{
 kvmppc_set_exit_type(vcpu, type);
 kvmppc_account_exit_stat(vcpu, type);
}
