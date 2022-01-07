
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;



__attribute__((used)) static inline void
check_v8086_mode(struct pt_regs *regs, unsigned long address,
   struct task_struct *tsk)
{
}
