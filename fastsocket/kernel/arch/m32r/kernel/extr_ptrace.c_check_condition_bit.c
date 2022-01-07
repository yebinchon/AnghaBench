
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int PT_PSW ;
 int get_stack_long (struct task_struct*,int ) ;

__attribute__((used)) static inline int
check_condition_bit(struct task_struct *child)
{
 return (int)((get_stack_long(child, PT_PSW) >> 8) & 1);
}
