
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val ;
struct task_struct {long exit_code; int exit_state; TYPE_1__* mm; } ;
typedef unsigned long microblaze_reg_t ;
typedef int data ;
struct TYPE_2__ {unsigned long start_code; unsigned long start_data; unsigned long end_code; } ;


 int EIO ;
 int EXIT_ZOMBIE ;
 long PT_DATA_ADDR ;
 long PT_SIZE ;
 long PT_TEXT_ADDR ;
 long PT_TEXT_LEN ;
 long SIGKILL ;
 int TIF_SYSCALL_TRACE ;
 int access_process_vm (struct task_struct*,long,...) ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 int pr_debug (char*,...) ;
 int ptrace_detach (struct task_struct*,long) ;
 int put_user (unsigned long,unsigned long*) ;
 unsigned long* reg_save_addr (long,struct task_struct*) ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;
 int valid_signal (long) ;
 int wake_up_process (struct task_struct*) ;

long arch_ptrace(struct task_struct *child, long request, long addr, long data)
{
 int rval;
 unsigned long val = 0;
 unsigned long copied;

 switch (request) {
 case 134:
 case 135:
  pr_debug("PEEKTEXT/PEEKDATA at %08lX\n", addr);
  copied = access_process_vm(child, addr, &val, sizeof(val), 0);
  rval = -EIO;
  if (copied != sizeof(val))
   break;
  rval = put_user(val, (unsigned long *)data);
  break;

 case 131:
 case 132:
  pr_debug("POKETEXT/POKEDATA to %08lX\n", addr);
  rval = 0;
  if (access_process_vm(child, addr, &data, sizeof(data), 1)
      == sizeof(data))
   break;
  rval = -EIO;
  break;


 case 133:
 case 130:
  pr_debug("PEEKUSR/POKEUSR : 0x%08lx\n", addr);
  rval = 0;
  if (addr >= PT_SIZE && request == 133) {




   if (addr == PT_TEXT_ADDR) {
    val = child->mm->start_code;
   } else if (addr == PT_DATA_ADDR) {
    val = child->mm->start_data;
   } else if (addr == PT_TEXT_LEN) {
    val = child->mm->end_code
     - child->mm->start_code;
   } else {
    rval = -EIO;
   }
  } else if (addr >= 0 && addr < PT_SIZE && (addr & 0x3) == 0) {
   microblaze_reg_t *reg_addr = reg_save_addr(addr, child);
   if (request == 133)
    val = *reg_addr;
   else
    *reg_addr = data;
  } else
   rval = -EIO;

  if (rval == 0 && request == 133)
   rval = put_user(val, (unsigned long *)data);
  break;

 case 128:
  pr_debug("PTRACE_SYSCALL\n");
 case 129:
  pr_debug("PTRACE_SINGLESTEP\n");

 case 138:
  pr_debug("PTRACE_CONT\n");
  rval = -EIO;
  if (!valid_signal(data))
   break;

  if (request == 128)
   set_tsk_thread_flag(child, TIF_SYSCALL_TRACE);
  else
   clear_tsk_thread_flag(child, TIF_SYSCALL_TRACE);

  child->exit_code = data;
  pr_debug("wakeup_process\n");
  wake_up_process(child);
  rval = 0;
  break;






 case 136:
  pr_debug("PTRACE_KILL\n");
  rval = 0;
  if (child->exit_state == EXIT_ZOMBIE)
   break;
  child->exit_code = SIGKILL;
  wake_up_process(child);
  break;

 case 137:
  pr_debug("PTRACE_DETACH\n");
  rval = ptrace_detach(child, data);
  break;
 default:

  rval = -EIO;
 }
 return rval;
}
