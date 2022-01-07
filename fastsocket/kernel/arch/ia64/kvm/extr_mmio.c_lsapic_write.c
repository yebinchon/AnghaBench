
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int PIB_LOW_HALF (unsigned long) ;


 int PIB_SIZE ;
 int panic_vm (struct kvm_vcpu*,char*,...) ;
 int vlsapic_write_ipi (struct kvm_vcpu*,unsigned long,unsigned long) ;
 int vlsapic_write_xtp (struct kvm_vcpu*,unsigned long) ;

void lsapic_write(struct kvm_vcpu *v, unsigned long addr,
   unsigned long length, unsigned long val)
{
 addr &= (PIB_SIZE - 1);

 switch (addr) {
 case 129:
  panic_vm(v, "Undefined write on PIB INTA\n");
  break;
 case 128:
  if (length == 1) {
   vlsapic_write_xtp(v, val);
  } else {
   panic_vm(v, "Undefined write on PIB XTP\n");
  }
  break;
 default:
  if (PIB_LOW_HALF(addr)) {

   if (length != 8)
    panic_vm(v, "Can't LHF write with size %ld!\n",
      length);
   else
    vlsapic_write_ipi(v, addr, val);
  } else {
   panic_vm(v, "IPI-UHF write %lx\n", addr);
  }
  break;
 }
}
