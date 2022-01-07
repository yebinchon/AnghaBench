
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_uml_exitcalls () ;
 int kill_off_processes () ;
 scalar_t__ kmalloc_ok ;

void uml_cleanup(void)
{
 kmalloc_ok = 0;
 do_uml_exitcalls();
 kill_off_processes();
}
