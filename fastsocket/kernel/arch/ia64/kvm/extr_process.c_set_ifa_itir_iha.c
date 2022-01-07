
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 long IA64_PSR_IC ;
 long VCPU (struct kvm_vcpu*,long) ;
 int vcpu_get_itir_on_fault (struct kvm_vcpu*,int ) ;
 int vcpu_set_ifa (struct kvm_vcpu*,int ) ;
 int vcpu_set_iha (struct kvm_vcpu*,int ) ;
 int vcpu_set_itir (struct kvm_vcpu*,int ) ;
 int vcpu_thash (struct kvm_vcpu*,int ) ;

void set_ifa_itir_iha(struct kvm_vcpu *vcpu, u64 vadr,
  int set_ifa, int set_itir, int set_iha)
{
 long vpsr;
 u64 value;

 vpsr = VCPU(vcpu, vpsr);

 if (vpsr & IA64_PSR_IC) {
  if (set_ifa)
   vcpu_set_ifa(vcpu, vadr);
  if (set_itir) {
   value = vcpu_get_itir_on_fault(vcpu, vadr);
   vcpu_set_itir(vcpu, value);
  }

  if (set_iha) {
   value = vcpu_thash(vcpu, vadr);
   vcpu_set_iha(vcpu, value);
  }
 }
}
