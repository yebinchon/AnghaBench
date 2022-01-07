
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user {int dummy; } ;
struct task_struct {long exit_code; int exit_state; TYPE_1__* mm; } ;
struct TYPE_2__ {unsigned long start_code; unsigned long start_data; unsigned long end_code; unsigned long end_data; } ;


 int EFAULT ;
 int EIO ;
 int EXIT_ZOMBIE ;
 long H8300_REGS_NO ;
 long PT_ORIG_ER0 ;
 long SIGKILL ;
 int TIF_SYSCALL_TRACE ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 int generic_ptrace_pokedata (struct task_struct*,long,long) ;
 int get_user (unsigned long,unsigned long*) ;
 int h8300_disable_trace (struct task_struct*) ;
 int h8300_enable_trace (struct task_struct*) ;
 unsigned long h8300_get_reg (struct task_struct*,int) ;
 int h8300_put_reg (struct task_struct*,int,unsigned long) ;
 int ptrace_detach (struct task_struct*,long) ;
 int put_user (unsigned long,unsigned long*) ;
 int read_long (struct task_struct*,long,unsigned long*) ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;
 int valid_signal (long) ;
 int wake_up_process (struct task_struct*) ;

long arch_ptrace(struct task_struct *child, long request, long addr, long data)
{
 int ret;

 switch (request) {
  case 135:
  case 136: {
   unsigned long tmp;

   ret = read_long(child, addr, &tmp);
   if (ret < 0)
    break ;
   ret = put_user(tmp, (unsigned long *) data);
   break ;
  }


  case 134: {
   unsigned long tmp = 0;

   if ((addr & 3) || addr < 0 || addr >= sizeof(struct user)) {
    ret = -EIO;
    break ;
   }

          ret = 0;
   addr = addr >> 2;

   if (addr < H8300_REGS_NO)
    tmp = h8300_get_reg(child, addr);
   else {
    switch(addr) {
    case 49:
     tmp = child->mm->start_code;
     break ;
    case 50:
     tmp = child->mm->start_data;
     break ;
    case 51:
     tmp = child->mm->end_code;
     break ;
    case 52:
     tmp = child->mm->end_data;
     break ;
    default:
     ret = -EIO;
    }
   }
   if (!ret)
    ret = put_user(tmp,(unsigned long *) data);
   break ;
  }


  case 132:
  case 133:
   ret = generic_ptrace_pokedata(child, addr, data);
   break;

  case 131:
   if ((addr & 3) || addr < 0 || addr >= sizeof(struct user)) {
    ret = -EIO;
    break ;
   }
   addr = addr >> 2;

   if (addr == PT_ORIG_ER0) {
    ret = -EIO;
    break ;
   }
   if (addr < H8300_REGS_NO) {
    ret = h8300_put_reg(child, addr, data);
    break ;
   }
   ret = -EIO;
   break ;
  case 128:
  case 140: {
   ret = -EIO;
   if (!valid_signal(data))
    break ;
   if (request == 128)
    set_tsk_thread_flag(child, TIF_SYSCALL_TRACE);
   else
    clear_tsk_thread_flag(child, TIF_SYSCALL_TRACE);
   child->exit_code = data;
   wake_up_process(child);

   h8300_disable_trace(child);
   ret = 0;
  }






  case 137: {

   ret = 0;
   if (child->exit_state == EXIT_ZOMBIE)
    break;
   child->exit_code = SIGKILL;
   h8300_disable_trace(child);
   wake_up_process(child);
   break;
  }

  case 129: {
   ret = -EIO;
   if (!valid_signal(data))
    break;
   clear_tsk_thread_flag(child, TIF_SYSCALL_TRACE);
   child->exit_code = data;
   h8300_enable_trace(child);
   wake_up_process(child);
   ret = 0;
   break;
  }

  case 139:
   ret = ptrace_detach(child, data);
   break;

  case 138: {
     int i;
   unsigned long tmp;
   for (i = 0; i < H8300_REGS_NO; i++) {
       tmp = h8300_get_reg(child, i);
       if (put_user(tmp, (unsigned long *) data)) {
    ret = -EFAULT;
    break;
       }
       data += sizeof(long);
   }
   ret = 0;
   break;
  }

  case 130: {
   int i;
   unsigned long tmp;
   for (i = 0; i < H8300_REGS_NO; i++) {
       if (get_user(tmp, (unsigned long *) data)) {
    ret = -EFAULT;
    break;
       }
       h8300_put_reg(child, i, tmp);
       data += sizeof(long);
   }
   ret = 0;
   break;
  }

  default:
   ret = -EIO;
   break;
 }
 return ret;
}
