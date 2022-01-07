
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long branch_target (unsigned int const*) ;
 unsigned int create_branch (unsigned int const*,unsigned long,unsigned int const) ;
 unsigned int create_cond_branch (unsigned int const*,unsigned long,unsigned int const) ;
 scalar_t__ instr_is_branch_bform (unsigned int const) ;
 scalar_t__ instr_is_branch_iform (unsigned int const) ;

unsigned int translate_branch(const unsigned int *dest, const unsigned int *src)
{
 unsigned long target;

 target = branch_target(src);

 if (instr_is_branch_iform(*src))
  return create_branch(dest, target, *src);
 else if (instr_is_branch_bform(*src))
  return create_cond_branch(dest, target, *src);

 return 0;
}
