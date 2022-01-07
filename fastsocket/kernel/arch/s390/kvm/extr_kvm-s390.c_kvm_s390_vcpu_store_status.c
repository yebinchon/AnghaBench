
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int __kvm_s390_vcpu_store_status (struct kvm_vcpu*,unsigned long) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_s390_vcpu_store_status(struct kvm_vcpu *vcpu, unsigned long addr)
{
 int rc;

 vcpu_load(vcpu);
 rc = __kvm_s390_vcpu_store_status(vcpu, addr);
 vcpu_put(vcpu);
 return rc;
}
