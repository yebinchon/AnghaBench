
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint64_t ;
struct kvm_vcpu {int dummy; } ;




 int PIB_SIZE ;
 unsigned long VLSAPIC_XTP (struct kvm_vcpu*) ;
 int panic_vm (struct kvm_vcpu*,char*) ;

unsigned long lsapic_read(struct kvm_vcpu *v, unsigned long addr,
  unsigned long length)
{
 uint64_t result = 0;

 addr &= (PIB_SIZE - 1);

 switch (addr) {
 case 129:
  if (length == 1)
   ;
  else
   panic_vm(v, "Undefined read on PIB INTA\n");

  break;
 case 128:
  if (length == 1) {
   result = VLSAPIC_XTP(v);
  } else {
   panic_vm(v, "Undefined read on PIB XTP\n");
  }
  break;
 default:
  panic_vm(v, "Undefined addr access for lsapic!\n");
  break;
 }
 return result;
}
