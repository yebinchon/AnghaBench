
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 int show_stack (int ,int *) ;

void dump_stack(void)
{
 show_stack(current, ((void*)0));
}
