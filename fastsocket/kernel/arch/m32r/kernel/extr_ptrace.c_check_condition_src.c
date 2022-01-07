
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 unsigned long get_stack_long (struct task_struct*,int ) ;
 int * reg_offset ;

__attribute__((used)) static int
check_condition_src(unsigned long op, unsigned long regno1,
      unsigned long regno2, struct task_struct *child)
{
 unsigned long reg1, reg2;

 reg2 = get_stack_long(child, reg_offset[regno2]);

 switch (op) {
 case 0x0:
  reg1 = get_stack_long(child, reg_offset[regno1]);
  return reg1 == reg2;
 case 0x1:
  reg1 = get_stack_long(child, reg_offset[regno1]);
  return reg1 != reg2;
 case 0x8:
  return reg2 == 0;
 case 0x9:
  return reg2 != 0;
 case 0xa:
  return (int)reg2 < 0;
 case 0xb:
  return (int)reg2 >= 0;
 case 0xc:
  return (int)reg2 <= 0;
 case 0xd:
  return (int)reg2 > 0;
 default:

  return 0;
 }
}
