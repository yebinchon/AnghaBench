
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_frame {unsigned long* gprs; unsigned long back_chain; } ;
struct pt_regs {unsigned long* gprs; } ;


 unsigned long PSW_ADDR_INSN ;
 int oprofile_add_trace (unsigned long) ;

__attribute__((used)) static unsigned long
__show_trace(unsigned int *depth, unsigned long sp,
      unsigned long low, unsigned long high)
{
 struct stack_frame *sf;
 struct pt_regs *regs;

 while (*depth) {
  sp = sp & PSW_ADDR_INSN;
  if (sp < low || sp > high - sizeof(*sf))
   return sp;
  sf = (struct stack_frame *) sp;
  (*depth)--;
  oprofile_add_trace(sf->gprs[8] & PSW_ADDR_INSN);


  while (*depth) {
   low = sp;
   sp = sf->back_chain & PSW_ADDR_INSN;
   if (!sp)
    break;
   if (sp <= low || sp > high - sizeof(*sf))
    return sp;
   sf = (struct stack_frame *) sp;
   (*depth)--;
   oprofile_add_trace(sf->gprs[8] & PSW_ADDR_INSN);

  }

  if (*depth == 0)
   break;


  sp = (unsigned long) (sf + 1);
  if (sp <= low || sp > high - sizeof(*regs))
   return sp;
  regs = (struct pt_regs *) sp;
  (*depth)--;
  oprofile_add_trace(sf->gprs[8] & PSW_ADDR_INSN);
  low = sp;
  sp = regs->gprs[15];
 }
 return sp;
}
