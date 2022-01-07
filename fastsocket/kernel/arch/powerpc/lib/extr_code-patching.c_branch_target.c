
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long branch_bform_target (unsigned int const*) ;
 unsigned long branch_iform_target (unsigned int const*) ;
 scalar_t__ instr_is_branch_bform (unsigned int const) ;
 scalar_t__ instr_is_branch_iform (unsigned int const) ;

unsigned long branch_target(const unsigned int *instr)
{
 if (instr_is_branch_iform(*instr))
  return branch_iform_target(instr);
 else if (instr_is_branch_bform(*instr))
  return branch_bform_target(instr);

 return 0;
}
