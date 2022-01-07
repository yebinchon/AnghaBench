
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {scalar_t__ ip; } ;


 scalar_t__ kgdb_isremovedbreak (scalar_t__) ;

int kgdb_skipexception(int exception, struct pt_regs *regs)
{
 if (exception == 3 && kgdb_isremovedbreak(regs->ip - 1)) {
  regs->ip -= 1;
  return 1;
 }
 return 0;
}
