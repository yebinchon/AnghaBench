
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int cs; } ;


 int __USER_CS ;
 int probe_kernel_address (unsigned char*,unsigned char) ;
 int user_mode (struct pt_regs*) ;

__attribute__((used)) static inline int
check_prefetch_opcode(struct pt_regs *regs, unsigned char *instr,
        unsigned char opcode, int *prefetch)
{
 unsigned char instr_hi = opcode & 0xf0;
 unsigned char instr_lo = opcode & 0x0f;

 switch (instr_hi) {
 case 0x20:
 case 0x30:






  return ((instr_lo & 7) == 0x6);
 case 0x60:

  return (instr_lo & 0xC) == 0x4;
 case 0xF0:

  return !instr_lo || (instr_lo>>1) == 1;
 case 0x00:

  if (probe_kernel_address(instr, opcode))
   return 0;

  *prefetch = (instr_lo == 0xF) &&
   (opcode == 0x0D || opcode == 0x18);
  return 0;
 default:
  return 0;
 }
}
