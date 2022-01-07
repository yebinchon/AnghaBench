
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct task_struct {int dummy; } ;







 unsigned long OP_MASK ;







 unsigned long PSR_C_BIT ;
 unsigned long REG_PSR ;
 unsigned long get_user_reg (struct task_struct*,unsigned long) ;
 int hweight16 (unsigned long) ;
 long ptrace_getaluop2 (struct task_struct*,unsigned long) ;
 long ptrace_getldrop2 (struct task_struct*,unsigned long) ;
 void* ptrace_getrn (struct task_struct*,unsigned long) ;
 int read_u32 (struct task_struct*,unsigned long,unsigned long*) ;

__attribute__((used)) static unsigned long
get_branch_address(struct task_struct *child, unsigned long pc, unsigned long insn)
{
 u32 alt = 0;

 switch (insn & 0x0e000000) {
 case 0x00000000:
 case 0x02000000: {



  long aluop1, aluop2, ccbit;

         if ((insn & 0x0fffffd0) == 0x012fff10) {



   alt = get_user_reg(child, insn & 15);
   break;
  }


  if ((insn & 0xf000) != 0xf000)
   break;

  aluop1 = ptrace_getrn(child, insn);
  aluop2 = ptrace_getaluop2(child, insn);
  ccbit = get_user_reg(child, REG_PSR) & PSR_C_BIT ? 1 : 0;

  switch (insn & OP_MASK) {
  case 137: alt = aluop1 & aluop2; break;
  case 135: alt = aluop1 ^ aluop2; break;
  case 128: alt = aluop1 - aluop2; break;
  case 131: alt = aluop2 - aluop1; break;
  case 138: alt = aluop1 + aluop2; break;
  case 139: alt = aluop1 + aluop2 + ccbit; break;
  case 129: alt = aluop1 - aluop2 + ccbit; break;
  case 130: alt = aluop2 - aluop1 + ccbit; break;
  case 132: alt = aluop1 | aluop2; break;
  case 134: alt = aluop2; break;
  case 136: alt = aluop1 & ~aluop2; break;
  case 133: alt = ~aluop2; break;
  }
  break;
 }

 case 0x04000000:
 case 0x06000000:



  if ((insn & 0x0010f000) == 0x0010f000) {
   unsigned long base;

   base = ptrace_getrn(child, insn);
   if (insn & 1 << 24) {
    long aluop2;

    if (insn & 0x02000000)
     aluop2 = ptrace_getldrop2(child, insn);
    else
     aluop2 = insn & 0xfff;

    if (insn & 1 << 23)
     base += aluop2;
    else
     base -= aluop2;
   }
   read_u32(child, base, &alt);
  }
  break;

 case 0x08000000:



  if ((insn & 0x00108000) == 0x00108000) {
   unsigned long base;
   unsigned int nr_regs;

   if (insn & (1 << 23)) {
    nr_regs = hweight16(insn & 65535) << 2;

    if (!(insn & (1 << 24)))
     nr_regs -= 4;
   } else {
    if (insn & (1 << 24))
     nr_regs = -4;
    else
     nr_regs = 0;
   }

   base = ptrace_getrn(child, insn);

   read_u32(child, base + nr_regs, &alt);
   break;
  }
  break;

 case 0x0a000000: {



  signed long displ;







  displ = (insn & 0x00ffffff) << 8;
  displ = (displ >> 6) + 8;
  if (displ != 0 && displ != 4)
   alt = pc + displ;
     }
     break;
 }

 return alt;
}
