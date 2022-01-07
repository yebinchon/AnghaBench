
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long sp; } ;


 unsigned long FRAME_SIZE_FULL ;
 int current ;
 int show_regs_log_lvl (struct pt_regs*,char*) ;
 int show_trace_log_lvl (int ,unsigned long*,struct pt_regs*,char*) ;
 int user_mode (struct pt_regs*) ;

void show_regs(struct pt_regs *regs)
{
 unsigned long sp = regs->sp;

 if (!user_mode(regs))
  sp = (unsigned long)regs + FRAME_SIZE_FULL;

 show_regs_log_lvl(regs, "");
 show_trace_log_lvl(current, (unsigned long *)sp, regs, "");
}
