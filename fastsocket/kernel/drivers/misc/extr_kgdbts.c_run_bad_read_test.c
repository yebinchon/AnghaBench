
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int tst; } ;


 int bad_read_test ;
 int init_simple_test () ;
 int kgdb_breakpoint () ;
 TYPE_1__ ts ;

__attribute__((used)) static void run_bad_read_test(void)
{
 init_simple_test();
 ts.tst = bad_read_test;
 ts.name = "bad_read_test";

 kgdb_breakpoint();
}
