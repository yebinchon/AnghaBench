
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned int FUNC ;
 unsigned int OPCODE ;
 unsigned int SPEC0 ;
 unsigned int SYNC ;

__attribute__((used)) static int simulate_sync(struct pt_regs *regs, unsigned int opcode)
{
 if ((opcode & OPCODE) == SPEC0 && (opcode & FUNC) == SYNC)
  return 0;

 return -1;
}
