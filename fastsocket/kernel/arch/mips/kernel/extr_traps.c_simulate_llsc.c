
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned int LL ;
 unsigned int OPCODE ;
 unsigned int SC ;
 int simulate_ll (struct pt_regs*,unsigned int) ;
 int simulate_sc (struct pt_regs*,unsigned int) ;

__attribute__((used)) static int simulate_llsc(struct pt_regs *regs, unsigned int opcode)
{
 if ((opcode & OPCODE) == LL)
  return simulate_ll(regs, opcode);
 if ((opcode & OPCODE) == SC)
  return simulate_sc(regs, opcode);

 return -1;
}
