
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGSEGV ;
 int current ;
 int do_signal () ;
 int force_sigsegv (int ,int ) ;
 int os_dump_core () ;

void fatal_sigsegv(void)
{
 force_sigsegv(SIGSEGV, current);
 do_signal();





 os_dump_core();
}
