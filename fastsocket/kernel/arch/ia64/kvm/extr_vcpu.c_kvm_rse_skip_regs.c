
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long ia64_rse_slot_num (unsigned long*) ;

__attribute__((used)) static inline unsigned long *kvm_rse_skip_regs(unsigned long *addr,
       long num_regs)
{
 long delta = ia64_rse_slot_num(addr) + num_regs;
 int i = 0;

 if (num_regs < 0)
  delta -= 0x3e;
 if (delta < 0) {
  while (delta <= -0x3f) {
   i--;
   delta += 0x3f;
  }
 } else {
  while (delta >= 0x3f) {
   i++;
   delta -= 0x3f;
  }
 }

 return addr + num_regs + i;
}
