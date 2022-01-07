
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int iir; unsigned long ior; } ;


 int OPCODE1_MASK ;
 int OPCODE4_MASK ;
int
check_unaligned(struct pt_regs *regs)
{
 unsigned long align_mask;



 align_mask = 0UL;
 switch (regs->iir & OPCODE1_MASK) {

 case 142:
 case 140:
 case 133:
  align_mask = 1UL;
  break;

 case 136:
 case 139:
 case 134:
 case 138:
 case 131:
 case 130:
  align_mask = 3UL;
  break;

 default:
  switch (regs->iir & OPCODE4_MASK) {
  case 141:
  case 132:
   align_mask = 1UL;
   break;
  case 135:
  case 137:
  case 128:
  case 129:
   align_mask = 3UL;
   break;
  }
  break;
 }

 return (int)(regs->ior & align_mask);
}
