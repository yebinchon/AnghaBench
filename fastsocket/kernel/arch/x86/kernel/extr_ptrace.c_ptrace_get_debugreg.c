
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long debugreg0; unsigned long debugreg1; unsigned long debugreg2; unsigned long debugreg3; unsigned long debugreg6; unsigned long debugreg7; } ;
struct task_struct {TYPE_1__ thread; } ;



__attribute__((used)) static unsigned long ptrace_get_debugreg(struct task_struct *child, int n)
{
 switch (n) {
 case 0: return child->thread.debugreg0;
 case 1: return child->thread.debugreg1;
 case 2: return child->thread.debugreg2;
 case 3: return child->thread.debugreg3;
 case 6: return child->thread.debugreg6;
 case 7: return child->thread.debugreg7;
 }
 return 0;
}
