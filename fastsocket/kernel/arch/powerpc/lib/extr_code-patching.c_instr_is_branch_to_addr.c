
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long branch_target (unsigned int const*) ;
 scalar_t__ instr_is_branch_bform (unsigned int const) ;
 scalar_t__ instr_is_branch_iform (unsigned int const) ;

int instr_is_branch_to_addr(const unsigned int *instr, unsigned long addr)
{
 if (instr_is_branch_iform(*instr) || instr_is_branch_bform(*instr))
  return branch_target(instr) == addr;

 return 0;
}
