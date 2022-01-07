
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pt_regs {unsigned long epsw; scalar_t__ lar; scalar_t__ pc; } ;


 int BUG () ;
 unsigned long EPSW_FLAG_C ;
 unsigned long EPSW_FLAG_Z ;
 int kdebug (char*,int,...) ;

__attribute__((used)) static void misalignment_MOV_Lcc(struct pt_regs *regs, uint32_t opcode)
{
 unsigned long epsw = regs->epsw;
 unsigned long NxorV;

 kdebug("MOV_Lcc %x [flags=%lx]", opcode, epsw & 0xf);


 NxorV = ((epsw >> 3) ^ epsw >> 1) & 1;

 switch (opcode & 0xf) {
 case 0x0:
  if (NxorV)
   goto take_the_loop;
  return;
 case 0x1:
  if (!((epsw & EPSW_FLAG_Z) | NxorV))
   goto take_the_loop;
  return;
 case 0x2:
  if (!NxorV)
   goto take_the_loop;
  return;
 case 0x3:
  if ((epsw & EPSW_FLAG_Z) | NxorV)
   goto take_the_loop;
  return;

 case 0x4:
  if (epsw & EPSW_FLAG_C)
   goto take_the_loop;
  return;
 case 0x5:
  if (!(epsw & (EPSW_FLAG_C | EPSW_FLAG_Z)))
   goto take_the_loop;
  return;
 case 0x6:
  if (!(epsw & EPSW_FLAG_C))
   goto take_the_loop;
  return;
 case 0x7:
  if (epsw & (EPSW_FLAG_C | EPSW_FLAG_Z))
   goto take_the_loop;
  return;

 case 0x8:
  if (epsw & EPSW_FLAG_Z)
   goto take_the_loop;
  return;
 case 0x9:
  if (!(epsw & EPSW_FLAG_Z))
   goto take_the_loop;
  return;
 case 0xa:
  goto take_the_loop;

 default:
  BUG();
 }

take_the_loop:

 kdebug("loop LAR=%lx", regs->lar);
 regs->pc = regs->lar - 4;
}
