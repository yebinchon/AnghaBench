
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* exitcall_t ) () ;


 int __uml_exitcall_begin () ;
 int __uml_exitcall_end () ;
 int stub1 () ;

void do_uml_exitcalls(void)
{
 exitcall_t *call;

 call = &__uml_exitcall_end;
 while (--call >= &__uml_exitcall_begin)
  (*call)();
}
