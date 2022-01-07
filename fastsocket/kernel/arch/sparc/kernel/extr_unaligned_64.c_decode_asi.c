
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int tstate; } ;


 int ASI_P ;

__attribute__((used)) static inline int decode_asi(unsigned int insn, struct pt_regs *regs)
{
 if (insn & 0x800000) {
  if (insn & 0x2000)
   return (unsigned char)(regs->tstate >> 24);
  else
   return (unsigned char)(insn >> 5);
 } else
  return ASI_P;
}
