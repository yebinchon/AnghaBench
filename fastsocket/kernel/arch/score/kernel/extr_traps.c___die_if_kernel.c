
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int __die (char const*,struct pt_regs*,char const*,char const*,unsigned long) ;
 int user_mode (struct pt_regs*) ;

void __die_if_kernel(const char *str, struct pt_regs *regs,
  const char *file, const char *func, unsigned long line)
{
 if (!user_mode(regs))
  __die(str, regs, file, func, line);
}
