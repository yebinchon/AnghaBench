
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (int *) ;
 scalar_t__ selftest_opcode_one (int *) ;
 int * selftest_opcodes ;

__attribute__((used)) static bool selftest_opcodes_all(void)
{
 bool pass = 1;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(selftest_opcodes); ++i)
  pass = pass && selftest_opcode_one(&selftest_opcodes[i]);

 return pass;
}
