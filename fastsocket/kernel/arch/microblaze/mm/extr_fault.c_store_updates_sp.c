
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {scalar_t__ pc; } ;


 scalar_t__ get_user (unsigned int,unsigned int*) ;

__attribute__((used)) static int store_updates_sp(struct pt_regs *regs)
{
 unsigned int inst;

 if (get_user(inst, (unsigned int *)regs->pc))
  return 0;

 if (((inst >> 21) & 0x1f) != 1)
  return 0;

 if ((inst & 0xd0000000) == 0xd0000000)
  return 1;
 return 0;
}
