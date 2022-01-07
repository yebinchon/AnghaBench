
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long pc; } ;


 int atomic_set (int *,int) ;
 int do_single_step (struct pt_regs*) ;
 int kgdb_cpu_doing_single_step ;
 int kgdb_hex2long (char**,unsigned long*) ;
 int kgdb_single_step ;
 int raw_smp_processor_id () ;
 int undo_single_step (struct pt_regs*) ;

int kgdb_arch_handle_exception(int e_vector, int signo, int err_code,
          char *remcomInBuffer, char *remcomOutBuffer,
          struct pt_regs *linux_regs)
{
 unsigned long addr;
 char *ptr;


 undo_single_step(linux_regs);

 switch (remcomInBuffer[0]) {
 case 'c':
 case 's':

  ptr = &remcomInBuffer[1];
  if (kgdb_hex2long(&ptr, &addr))
   linux_regs->pc = addr;
 case 'D':
 case 'k':
  atomic_set(&kgdb_cpu_doing_single_step, -1);

  if (remcomInBuffer[0] == 's') {
   do_single_step(linux_regs);
   kgdb_single_step = 1;

   atomic_set(&kgdb_cpu_doing_single_step,
       raw_smp_processor_id());
  }

  return 0;
 }


 return -1;
}
