
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {unsigned long ip; int flags; } ;
struct TYPE_2__ {int type; } ;


 int X86_EFLAGS_RF ;
 int X86_EFLAGS_TF ;
 int atomic_set (int *,int) ;
 TYPE_1__* breakinfo ;
 int get_debugreg (unsigned long,int) ;
 int kgdb_correct_hw_break () ;
 int kgdb_cpu_doing_single_step ;
 int kgdb_hex2long (char**,unsigned long*) ;
 int kgdb_single_step ;
 int raw_smp_processor_id () ;
 int set_debugreg (unsigned long,int) ;

int kgdb_arch_handle_exception(int e_vector, int signo, int err_code,
          char *remcomInBuffer, char *remcomOutBuffer,
          struct pt_regs *linux_regs)
{
 unsigned long addr;
 unsigned long dr6;
 char *ptr;
 int newPC;

 switch (remcomInBuffer[0]) {
 case 'c':
 case 's':

  ptr = &remcomInBuffer[1];
  if (kgdb_hex2long(&ptr, &addr))
   linux_regs->ip = addr;
 case 'D':
 case 'k':
  newPC = linux_regs->ip;


  linux_regs->flags &= ~X86_EFLAGS_TF;
  atomic_set(&kgdb_cpu_doing_single_step, -1);


  if (remcomInBuffer[0] == 's') {
   linux_regs->flags |= X86_EFLAGS_TF;
   kgdb_single_step = 1;
   atomic_set(&kgdb_cpu_doing_single_step,
       raw_smp_processor_id());
  }

  get_debugreg(dr6, 6);
  if (!(dr6 & 0x4000)) {
   int breakno;

   for (breakno = 0; breakno < 4; breakno++) {
    if (dr6 & (1 << breakno) &&
        breakinfo[breakno].type == 0) {

     linux_regs->flags |= X86_EFLAGS_RF;
     break;
    }
   }
  }
  set_debugreg(0UL, 6);
  kgdb_correct_hw_break();

  return 0;
 }


 return -1;
}
