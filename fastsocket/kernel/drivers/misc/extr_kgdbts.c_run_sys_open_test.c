
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int tst; } ;


 int init_simple_test () ;
 int kgdb_breakpoint () ;
 int sys_open_test ;
 TYPE_1__ ts ;

__attribute__((used)) static void run_sys_open_test(void)
{
 init_simple_test();
 ts.tst = sys_open_test;
 ts.name = "sys_open_test";

 kgdb_breakpoint();
}
