
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int show_stack (int *,unsigned long*) ;

void show_task(unsigned long *sp)
{
 show_stack(((void*)0), sp);
}
