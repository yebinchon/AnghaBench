
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ selftest_opcodes_all () ;

bool kmemcheck_selftest(void)
{
 bool pass = 1;

 pass = pass && selftest_opcodes_all();

 return pass;
}
