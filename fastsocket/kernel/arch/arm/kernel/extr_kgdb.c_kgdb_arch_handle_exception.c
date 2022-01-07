
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long ARM_pc; } ;


 int compiled_break ;
 int kgdb_hex2long (char**,unsigned long*) ;

int kgdb_arch_handle_exception(int exception_vector, int signo,
          int err_code, char *remcom_in_buffer,
          char *remcom_out_buffer,
          struct pt_regs *linux_regs)
{
 unsigned long addr;
 char *ptr;

 switch (remcom_in_buffer[0]) {
 case 'D':
 case 'k':
 case 'c':






  ptr = &remcom_in_buffer[1];
  if (kgdb_hex2long(&ptr, &addr))
   linux_regs->ARM_pc = addr;
  else if (compiled_break == 1)
   linux_regs->ARM_pc += 4;

  compiled_break = 0;

  return 0;
 }

 return -1;
}
