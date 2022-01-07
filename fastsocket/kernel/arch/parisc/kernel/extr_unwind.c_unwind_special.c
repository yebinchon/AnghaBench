
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_frame_info {int sp; int prev_ip; int prev_sp; } ;
struct pt_regs {int * iaoq; int * gr; } ;


 int PT_SZ_ALGN ;
 int dbg (char*) ;
 unsigned long get_func_addr (unsigned long*) ;

__attribute__((used)) static int unwind_special(struct unwind_frame_info *info, unsigned long pc, int frame_size)
{
 extern void handle_interruption(int, struct pt_regs *);
 static unsigned long *hi = (unsigned long *)&handle_interruption;

 if (pc == get_func_addr(hi)) {
  struct pt_regs *regs = (struct pt_regs *)(info->sp - frame_size - PT_SZ_ALGN);
  dbg("Unwinding through handle_interruption()\n");
  info->prev_sp = regs->gr[30];
  info->prev_ip = regs->iaoq[0];

  return 1;
 }

 return 0;
}
