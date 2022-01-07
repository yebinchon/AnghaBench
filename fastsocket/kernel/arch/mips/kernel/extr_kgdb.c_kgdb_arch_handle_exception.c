
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long cp0_epc; } ;


 int atomic_set (int *,int) ;
 int kgdb_cpu_doing_single_step ;
 int kgdb_hex2long (char**,unsigned long*) ;
 int smp_processor_id () ;

int kgdb_arch_handle_exception(int vector, int signo, int err_code,
          char *remcom_in_buffer, char *remcom_out_buffer,
          struct pt_regs *regs)
{
 char *ptr;
 unsigned long address;
 int cpu = smp_processor_id();

 switch (remcom_in_buffer[0]) {
 case 's':
 case 'c':

  ptr = &remcom_in_buffer[1];
  if (kgdb_hex2long(&ptr, &address))
   regs->cp0_epc = address;

  atomic_set(&kgdb_cpu_doing_single_step, -1);
  if (remcom_in_buffer[0] == 's')
   atomic_set(&kgdb_cpu_doing_single_step, cpu);

  return 0;
 }

 return -1;
}
