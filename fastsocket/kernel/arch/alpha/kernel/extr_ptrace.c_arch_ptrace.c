
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp ;
struct task_struct {long exit_code; int exit_state; } ;
struct TYPE_2__ {int bpt_nsaved; } ;


 int DBG (int ,char*) ;
 int DBG_MEM ;
 long EIO ;
 int EXIT_ZOMBIE ;
 long SIGKILL ;
 int TIF_SYSCALL_TRACE ;
 size_t access_process_vm (struct task_struct*,long,unsigned long*,int,int ) ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 int force_successful_syscall_return () ;
 long generic_ptrace_pokedata (struct task_struct*,long,long) ;
 long get_reg (struct task_struct*,long) ;
 int ptrace_cancel_bpt (struct task_struct*) ;
 long ptrace_request (struct task_struct*,long,long,long) ;
 long put_reg (struct task_struct*,long,long) ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;
 TYPE_1__* task_thread_info (struct task_struct*) ;
 int valid_signal (long) ;
 int wake_up_process (struct task_struct*) ;

long arch_ptrace(struct task_struct *child, long request, long addr, long data)
{
 unsigned long tmp;
 size_t copied;
 long ret;

 switch (request) {

 case 134:
 case 135:
  copied = access_process_vm(child, addr, &tmp, sizeof(tmp), 0);
  ret = -EIO;
  if (copied != sizeof(tmp))
   break;

  force_successful_syscall_return();
  ret = tmp;
  break;


 case 133:
  force_successful_syscall_return();
  ret = get_reg(child, addr);
  DBG(DBG_MEM, ("peek $%ld->%#lx\n", addr, ret));
  break;


 case 131:
 case 132:
  ret = generic_ptrace_pokedata(child, addr, data);
  break;

 case 130:
  DBG(DBG_MEM, ("poke $%ld<-%#lx\n", addr, data));
  ret = put_reg(child, addr, data);
  break;

 case 128:

 case 137:
  ret = -EIO;
  if (!valid_signal(data))
   break;
  if (request == 128)
   set_tsk_thread_flag(child, TIF_SYSCALL_TRACE);
  else
   clear_tsk_thread_flag(child, TIF_SYSCALL_TRACE);
  child->exit_code = data;

  ptrace_cancel_bpt(child);
  wake_up_process(child);
  ret = 0;
  break;






 case 136:
  ret = 0;
  if (child->exit_state == EXIT_ZOMBIE)
   break;
  child->exit_code = SIGKILL;

  ptrace_cancel_bpt(child);
  wake_up_process(child);
  break;

 case 129:
  ret = -EIO;
  if (!valid_signal(data))
   break;

  task_thread_info(child)->bpt_nsaved = -1;
  clear_tsk_thread_flag(child, TIF_SYSCALL_TRACE);
  child->exit_code = data;
  wake_up_process(child);

  ret = 0;
  break;

 default:
  ret = ptrace_request(child, request, addr, data);
  break;
 }
 return ret;
}
