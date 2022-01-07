
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_backtrace (int *,int *) ;

void dump_stack(void)
{
 dump_backtrace(((void*)0), ((void*)0));
}
