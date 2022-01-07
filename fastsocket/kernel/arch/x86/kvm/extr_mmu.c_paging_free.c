
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int nonpaging_free (struct kvm_vcpu*) ;

__attribute__((used)) static void paging_free(struct kvm_vcpu *vcpu)
{
 nonpaging_free(vcpu);
}
