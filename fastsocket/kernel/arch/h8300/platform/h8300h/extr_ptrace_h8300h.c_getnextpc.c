
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct optable {unsigned char bitmask; unsigned char bitpattern; size_t length; int type; } ;
struct TYPE_2__ {int size; struct optable* ptr; } ;


 int PT_ER0 ;
 int PT_ER1 ;
 int PT_USP ;
 unsigned long h8300_get_reg (struct task_struct*,int ) ;

 int isbranch (struct task_struct*,unsigned char) ;


 TYPE_1__* optables ;





__attribute__((used)) static unsigned short *getnextpc(struct task_struct *child, unsigned short *pc)
{
 const struct optable *op;
 unsigned char *fetch_p;
 unsigned char inst;
 unsigned long addr;
 unsigned long *sp;
 int op_len,regno;
 op = optables[0].ptr;
 op_len = optables[0].size;
 fetch_p = (unsigned char *)pc;
 inst = *fetch_p++;
 do {
  if ((inst & op->bitmask) == op->bitpattern) {
   if (op->length < 0) {
    op = optables[-op->length].ptr;
    op_len = optables[-op->length].size + 1;
    inst = *fetch_p++;
   } else {
    switch (op->type) {
    case 132:
     return pc + op->length;
    case 133:
     addr = *(unsigned long *)pc;
     return (unsigned short *)(addr & 0x00ffffff);
    case 134:
     addr = *pc & 0xff;
     return (unsigned short *)(*(unsigned long *)addr);
    case 128:
     sp = (unsigned long *)h8300_get_reg(child, PT_USP);







     return (unsigned short *)(*(sp+2) & 0x00ffffff);
    case 131:
     regno = (*pc >> 4) & 0x07;
     if (regno == 0)
      addr = h8300_get_reg(child, PT_ER0);
     else
      addr = h8300_get_reg(child, regno-1+PT_ER1);
     return (unsigned short *)addr;
    case 130:
     if (inst == 0x55 || isbranch(child,inst & 0x0f))
      pc = (unsigned short *)((unsigned long)pc +
               ((signed char)(*fetch_p)));
     return pc+1;
    case 129:
     if (inst == 0x5c || isbranch(child,(*fetch_p & 0xf0) >> 4))
      pc = (unsigned short *)((unsigned long)pc +
               ((signed short)(*(pc+1))));
     return pc+2;
    }
   }
  } else
   op++;
 } while(--op_len > 0);
 return ((void*)0);
}
