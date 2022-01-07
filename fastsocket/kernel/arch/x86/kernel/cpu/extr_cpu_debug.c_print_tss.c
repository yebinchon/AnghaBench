
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pt_regs {unsigned int ax; unsigned int bx; unsigned int cx; unsigned int dx; unsigned int si; unsigned int di; unsigned int bp; unsigned int sp; unsigned int r8; unsigned int r9; unsigned int r10; unsigned int r11; unsigned int r12; unsigned int r13; unsigned int r14; unsigned int r15; int ss; unsigned int flags; unsigned int ip; } ;


 int current ;
 int seq_printf (struct seq_file*,char*,unsigned int) ;
 struct pt_regs* task_pt_regs (int ) ;

__attribute__((used)) static void print_tss(void *arg)
{
 struct pt_regs *regs = task_pt_regs(current);
 struct seq_file *seq = arg;
 unsigned int seg;

 seq_printf(seq, " RAX\t: %016lx\n", regs->ax);
 seq_printf(seq, " RBX\t: %016lx\n", regs->bx);
 seq_printf(seq, " RCX\t: %016lx\n", regs->cx);
 seq_printf(seq, " RDX\t: %016lx\n", regs->dx);

 seq_printf(seq, " RSI\t: %016lx\n", regs->si);
 seq_printf(seq, " RDI\t: %016lx\n", regs->di);
 seq_printf(seq, " RBP\t: %016lx\n", regs->bp);
 seq_printf(seq, " ESP\t: %016lx\n", regs->sp);
 asm("movl %%cs,%0" : "=r" (seg));
 seq_printf(seq, " CS\t:             %04x\n", seg);
 asm("movl %%ds,%0" : "=r" (seg));
 seq_printf(seq, " DS\t:             %04x\n", seg);
 seq_printf(seq, " SS\t:             %04lx\n", regs->ss & 0xffff);
 asm("movl %%es,%0" : "=r" (seg));
 seq_printf(seq, " ES\t:             %04x\n", seg);
 asm("movl %%fs,%0" : "=r" (seg));
 seq_printf(seq, " FS\t:             %04x\n", seg);
 asm("movl %%gs,%0" : "=r" (seg));
 seq_printf(seq, " GS\t:             %04x\n", seg);

 seq_printf(seq, " EFLAGS\t: %016lx\n", regs->flags);

 seq_printf(seq, " EIP\t: %016lx\n", regs->ip);
}
