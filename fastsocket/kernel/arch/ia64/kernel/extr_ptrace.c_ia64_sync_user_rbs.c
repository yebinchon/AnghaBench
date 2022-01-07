
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct task_struct {int dummy; } ;
struct switch_stack {int dummy; } ;


 long EIO ;
 int access_process_vm (struct task_struct*,unsigned long,unsigned long*,int,int) ;
 long ia64_peek (struct task_struct*,struct switch_stack*,unsigned long,unsigned long,unsigned long*) ;

long
ia64_sync_user_rbs (struct task_struct *child, struct switch_stack *sw,
      unsigned long user_rbs_start, unsigned long user_rbs_end)
{
 unsigned long addr, val;
 long ret;


 for (addr = user_rbs_start; addr < user_rbs_end; addr += 8) {
  ret = ia64_peek(child, sw, user_rbs_end, addr, &val);
  if (ret < 0)
   return ret;
  if (access_process_vm(child, addr, &val, sizeof(val), 1)
      != sizeof(val))
   return -EIO;
 }
 return 0;
}
