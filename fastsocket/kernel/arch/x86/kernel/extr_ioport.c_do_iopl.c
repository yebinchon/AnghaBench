
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int flags; } ;


 int CAP_SYS_RAWIO ;
 int EINVAL ;
 int EPERM ;
 unsigned int X86_EFLAGS_IOPL ;
 int capable (int ) ;

__attribute__((used)) static int do_iopl(unsigned int level, struct pt_regs *regs)
{
 unsigned int old = (regs->flags >> 12) & 3;

 if (level > 3)
  return -EINVAL;

 if (level > old) {
  if (!capable(CAP_SYS_RAWIO))
   return -EPERM;
 }
 regs->flags = (regs->flags & ~X86_EFLAGS_IOPL) | (level << 12);

 return 0;
}
