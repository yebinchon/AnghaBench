
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long sp; struct pt_regs* next_frame; } ;


 scalar_t__ user_mode (struct pt_regs const*) ;

inline unsigned long user_stack(const struct pt_regs *regs)
{
 while (regs->next_frame)
  regs = regs->next_frame;
 return user_mode(regs) ? regs->sp : 0;
}
