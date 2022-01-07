
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* exception_handlers ;

void *set_except_vector(int n, void *addr)
{
 unsigned long handler = (unsigned long) addr;
 unsigned long old_handler = exception_handlers[n];

 exception_handlers[n] = handler;
 return (void *)old_handler;
}
