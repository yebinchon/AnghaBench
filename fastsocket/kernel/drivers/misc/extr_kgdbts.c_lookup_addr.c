
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ do_fork ;
 int hw_break_val ;
 scalar_t__ kgdbts_break_test ;
 int strcmp (char*,char*) ;
 scalar_t__ sys_open ;

__attribute__((used)) static unsigned long lookup_addr(char *arg)
{
 unsigned long addr = 0;

 if (!strcmp(arg, "kgdbts_break_test"))
  addr = (unsigned long)kgdbts_break_test;
 else if (!strcmp(arg, "sys_open"))
  addr = (unsigned long)sys_open;
 else if (!strcmp(arg, "do_fork"))
  addr = (unsigned long)do_fork;
 else if (!strcmp(arg, "hw_break_val"))
  addr = (unsigned long)&hw_break_val;
 return addr;
}
