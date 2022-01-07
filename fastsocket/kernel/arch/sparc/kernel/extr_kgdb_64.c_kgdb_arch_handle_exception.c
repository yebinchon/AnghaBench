
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long tpc; unsigned long tnpc; } ;


 scalar_t__ arch_kgdb_breakpoint ;
 int kgdb_hex2long (char**,unsigned long*) ;

int kgdb_arch_handle_exception(int e_vector, int signo, int err_code,
          char *remcomInBuffer, char *remcomOutBuffer,
          struct pt_regs *linux_regs)
{
 unsigned long addr;
 char *ptr;

 switch (remcomInBuffer[0]) {
 case 'c':

  ptr = &remcomInBuffer[1];
  if (kgdb_hex2long(&ptr, &addr)) {
   linux_regs->tpc = addr;
   linux_regs->tnpc = addr + 4;
  }


 case 'D':
 case 'k':
  if (linux_regs->tpc == (unsigned long) arch_kgdb_breakpoint) {
   linux_regs->tpc = linux_regs->tnpc;
   linux_regs->tnpc += 4;
  }
  return 0;
 }
 return -1;
}
