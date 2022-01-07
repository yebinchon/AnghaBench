
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 int show_stack (int ,unsigned long*) ;

void dump_stack(void)
{
 unsigned long *ksp;

 __asm__ __volatile__("mov	%%fp, %0"
        : "=r" (ksp));
 show_stack(current, ksp);
}
