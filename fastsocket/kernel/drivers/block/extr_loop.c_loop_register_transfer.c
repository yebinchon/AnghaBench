
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_func_table {unsigned int number; } ;


 int EINVAL ;
 unsigned int MAX_LO_CRYPT ;
 struct loop_func_table** xfer_funcs ;

int loop_register_transfer(struct loop_func_table *funcs)
{
 unsigned int n = funcs->number;

 if (n >= MAX_LO_CRYPT || xfer_funcs[n])
  return -EINVAL;
 xfer_funcs[n] = funcs;
 return 0;
}
