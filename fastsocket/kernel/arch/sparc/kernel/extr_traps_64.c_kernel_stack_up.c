
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_window {unsigned long* ins; } ;


 scalar_t__ STACK_BIAS ;

__attribute__((used)) static inline struct reg_window *kernel_stack_up(struct reg_window *rw)
{
 unsigned long fp = rw->ins[6];

 if (!fp)
  return ((void*)0);

 return (struct reg_window *) (fp + STACK_BIAS);
}
