
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int tst; } ;


 int eprintk (char*,char*) ;
 int hw_access_break_test ;
 int hw_break_val_access () ;
 int hw_break_val_write () ;
 int hw_write_break_test ;
 scalar_t__ hwbreaks_ok ;
 int init_simple_test () ;
 int kgdb_breakpoint () ;
 int test_complete ;
 TYPE_1__ ts ;

__attribute__((used)) static void run_hw_break_test(int is_write_test)
{
 test_complete = 0;
 init_simple_test();
 if (is_write_test) {
  ts.tst = hw_write_break_test;
  ts.name = "hw_write_break_test";
 } else {
  ts.tst = hw_access_break_test;
  ts.name = "hw_access_break_test";
 }

 kgdb_breakpoint();
 hw_break_val_access();
 if (is_write_test) {
  if (test_complete == 2) {
   eprintk("kgdbts: ERROR %s broke on access\n",
    ts.name);
   hwbreaks_ok = 0;
  }
  hw_break_val_write();
 }
 kgdb_breakpoint();

 if (test_complete == 1)
  return;

 eprintk("kgdbts: ERROR %s test failed\n", ts.name);
 hwbreaks_ok = 0;
}
