
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct reg_window32 {scalar_t__* ins; } ;
struct pt_regs {int psr; scalar_t__ pc; scalar_t__* u_regs; } ;
struct TYPE_3__ {int comm; } ;


 unsigned long PAGE_OFFSET ;
 int PSR_PS ;
 int SIGKILL ;
 int SIGSEGV ;
 int TAINT_DIE ;
 size_t UREG_FP ;
 int __RESTORE ;
 int __SAVE ;
 int add_taint (int ) ;
 TYPE_1__* current ;
 int do_exit (int ) ;
 int instruction_dump (unsigned long*) ;
 int printk (char*,...) ;
 int show_regs (struct pt_regs*) ;
 int task_pid_nr (TYPE_1__*) ;

void die_if_kernel(char *str, struct pt_regs *regs)
{
 static int die_counter;
 int count = 0;


 printk(
"              \\|/ ____ \\|/\n"
"              \"@'/ ,. \\`@\"\n"
"              /_| \\__/ |_\\\n"
"                 \\__U_/\n");

 printk("%s(%d): %s [#%d]\n", current->comm, task_pid_nr(current), str, ++die_counter);
 show_regs(regs);
 add_taint(TAINT_DIE);

 __SAVE; __SAVE; __SAVE; __SAVE;
 __SAVE; __SAVE; __SAVE; __SAVE;
 __RESTORE; __RESTORE; __RESTORE; __RESTORE;
 __RESTORE; __RESTORE; __RESTORE; __RESTORE;

 {
  struct reg_window32 *rw = (struct reg_window32 *)regs->u_regs[UREG_FP];





  while(rw &&
        count++ < 30 &&
                      (((unsigned long) rw) >= PAGE_OFFSET) &&
        !(((unsigned long) rw) & 0x7)) {
   printk("Caller[%08lx]: %pS\n", rw->ins[7],
          (void *) rw->ins[7]);
   rw = (struct reg_window32 *)rw->ins[6];
  }
 }
 printk("Instruction DUMP:");
 instruction_dump ((unsigned long *) regs->pc);
 if(regs->psr & PSR_PS)
  do_exit(SIGKILL);
 do_exit(SIGSEGV);
}
