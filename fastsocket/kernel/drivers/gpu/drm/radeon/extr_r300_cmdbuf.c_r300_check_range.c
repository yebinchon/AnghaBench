
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MARK_SAFE ;
 scalar_t__* r300_reg_flags ;

__attribute__((used)) static __inline__ int r300_check_range(unsigned reg, int count)
{
 int i;
 if (reg & ~0xffff)
  return -1;
 for (i = (reg >> 2); i < (reg >> 2) + count; i++)
  if (r300_reg_flags[i] != MARK_SAFE)
   return 1;
 return 0;
}
