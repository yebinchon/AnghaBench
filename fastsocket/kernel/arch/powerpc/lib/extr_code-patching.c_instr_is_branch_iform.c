
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int branch_opcode (unsigned int) ;

__attribute__((used)) static int instr_is_branch_iform(unsigned int instr)
{
 return branch_opcode(instr) == 18;
}
