
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 unsigned long PAGE_MASK ;
 int X86EMUL_CONTINUE ;
 int emulator_write_emulated_onepage (unsigned long,void const*,unsigned int,struct kvm_vcpu*) ;

int emulator_write_emulated(unsigned long addr,
       const void *val,
       unsigned int bytes,
       struct kvm_vcpu *vcpu)
{

 if (((addr + bytes - 1) ^ addr) & PAGE_MASK) {
  int rc, now;

  now = -addr & ~PAGE_MASK;
  rc = emulator_write_emulated_onepage(addr, val, now, vcpu);
  if (rc != X86EMUL_CONTINUE)
   return rc;
  addr += now;
  val += now;
  bytes -= now;
 }
 return emulator_write_emulated_onepage(addr, val, bytes, vcpu);
}
