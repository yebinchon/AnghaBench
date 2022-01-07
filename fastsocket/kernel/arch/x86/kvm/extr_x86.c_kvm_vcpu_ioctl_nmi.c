
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_inject_nmi (struct kvm_vcpu*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_vcpu_ioctl_nmi(struct kvm_vcpu *vcpu)
{
 vcpu_load(vcpu);
 kvm_inject_nmi(vcpu);
 vcpu_put(vcpu);

 return 0;
}
