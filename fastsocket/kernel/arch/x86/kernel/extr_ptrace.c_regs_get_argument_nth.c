
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned int ARRAY_SIZE (int*) ;
 int* arg_offs_table ;
 unsigned long regs_get_kernel_stack_nth (struct pt_regs*,int) ;

unsigned long regs_get_argument_nth(struct pt_regs *regs, unsigned int n)
{
 if (n < ARRAY_SIZE(arg_offs_table))
  return *(unsigned long *)((char *)regs + arg_offs_table[n]);
 else {




  n -= ARRAY_SIZE(arg_offs_table);
  return regs_get_kernel_stack_nth(regs, 1 + n);
 }
}
