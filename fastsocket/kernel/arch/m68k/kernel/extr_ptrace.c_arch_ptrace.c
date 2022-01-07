
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_m68kfp_struct {int dummy; } ;
struct TYPE_2__ {unsigned long* fp; } ;
struct task_struct {long exit_code; TYPE_1__ thread; int exit_state; } ;


 int EFAULT ;
 long EIO ;
 int EXIT_ZOMBIE ;
 int FPU_IS_EMU ;
 long PT_SR ;
 long SIGKILL ;
 long SR_MASK ;
 int TIF_DELAYED_TRACE ;
 int TIF_SYSCALL_TRACE ;
 int TRACE_BITS ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 int copy_from_user (long**,void*,int) ;
 int copy_to_user (void*,long**,int) ;
 int generic_ptrace_peekdata (struct task_struct*,long,long) ;
 int generic_ptrace_pokedata (struct task_struct*,long,long) ;
 long get_reg (struct task_struct*,long) ;
 int get_user (unsigned long,unsigned long*) ;
 int ptrace_request (struct task_struct*,long,long,long) ;
 int put_reg (struct task_struct*,int,unsigned long) ;
 int put_user (unsigned long,unsigned long*) ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;
 int singlestep_disable (struct task_struct*) ;
 int valid_signal (long) ;
 int wake_up_process (struct task_struct*) ;

long arch_ptrace(struct task_struct *child, long request, long addr, long data)
{
 unsigned long tmp;
 int i, ret = 0;

 switch (request) {

 case 136:
 case 137:
  ret = generic_ptrace_peekdata(child, addr, data);
  break;


 case 135:
  if (addr & 3)
   goto out_eio;
  addr >>= 2;

  if (addr >= 0 && addr < 19) {
   tmp = get_reg(child, addr);
   if (addr == PT_SR)
    tmp >>= 16;
  } else if (addr >= 21 && addr < 49) {
   tmp = child->thread.fp[addr - 21];



   if (FPU_IS_EMU && (addr < 45) && !(addr % 3))
    tmp = ((tmp & 0xffff0000) << 15) |
          ((tmp & 0x0000ffff) << 16);
  } else
   break;
  ret = put_user(tmp, (unsigned long *)data);
  break;


 case 133:
 case 134:
  ret = generic_ptrace_pokedata(child, addr, data);
  break;

 case 132:
  if (addr & 3)
   goto out_eio;
  addr >>= 2;

  if (addr == PT_SR) {
   data &= SR_MASK;
   data <<= 16;
   data |= get_reg(child, PT_SR) & ~(SR_MASK << 16);
  } else if (addr >= 0 && addr < 19) {
   if (put_reg(child, addr, data))
    goto out_eio;
  } else if (addr >= 21 && addr < 48) {



   if (FPU_IS_EMU && (addr < 45) && !(addr % 3)) {
    data = (unsigned long)data << 15;
    data = (data & 0xffff0000) |
           ((data & 0x0000ffff) >> 1);
   }
   child->thread.fp[addr - 21] = data;
  } else
   goto out_eio;
  break;

 case 128:
 case 141:
  if (!valid_signal(data))
   goto out_eio;

  if (request == 128)
   set_tsk_thread_flag(child, TIF_SYSCALL_TRACE);
  else
   clear_tsk_thread_flag(child, TIF_SYSCALL_TRACE);
  child->exit_code = data;
  singlestep_disable(child);
  wake_up_process(child);
  break;






 case 138:
  if (child->exit_state == EXIT_ZOMBIE)
   break;
  child->exit_code = SIGKILL;
  singlestep_disable(child);
  wake_up_process(child);
  break;

 case 129:
  if (!valid_signal(data))
   goto out_eio;

  clear_tsk_thread_flag(child, TIF_SYSCALL_TRACE);
  tmp = get_reg(child, PT_SR) | (TRACE_BITS << 16);
  put_reg(child, PT_SR, tmp);
  set_tsk_thread_flag(child, TIF_DELAYED_TRACE);

  child->exit_code = data;

  wake_up_process(child);
  break;

 case 139:
  for (i = 0; i < 19; i++) {
   tmp = get_reg(child, i);
   if (i == PT_SR)
    tmp >>= 16;
   ret = put_user(tmp, (unsigned long *)data);
   if (ret)
    break;
   data += sizeof(long);
  }
  break;

 case 130:
  for (i = 0; i < 19; i++) {
   ret = get_user(tmp, (unsigned long *)data);
   if (ret)
    break;
   if (i == PT_SR) {
    tmp &= SR_MASK;
    tmp <<= 16;
    tmp |= get_reg(child, PT_SR) & ~(SR_MASK << 16);
   }
   put_reg(child, i, tmp);
   data += sizeof(long);
  }
  break;

 case 140:
  if (copy_to_user((void *)data, &child->thread.fp,
     sizeof(struct user_m68kfp_struct)))
   ret = -EFAULT;
  break;

 case 131:
  if (copy_from_user(&child->thread.fp, (void *)data,
       sizeof(struct user_m68kfp_struct)))
   ret = -EFAULT;
  break;

 default:
  ret = ptrace_request(child, request, addr, data);
  break;
 }

 return ret;
out_eio:
 return -EIO;
}
