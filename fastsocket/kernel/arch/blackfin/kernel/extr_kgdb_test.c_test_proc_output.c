
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kgdb_l1_test () ;
 int kgdb_l2_test () ;
 int kgdb_test (char*,int,int,int) ;

__attribute__((used)) static int test_proc_output(char *buf)
{
 kgdb_test("hello world!", 12, 0x55, 0x10);

 kgdb_l1_test();





 return 0;
}
