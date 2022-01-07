
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct task_struct {int dummy; } ;


 int EIO ;
 int access_process_vm (struct task_struct*,unsigned long,unsigned long*,int,int) ;

__attribute__((used)) static int
write_tsk_long(struct task_struct *child,
  unsigned long addr, unsigned long val)
{
 int copied;

 copied = access_process_vm(child, addr, &val, sizeof(val), 1);

 return copied != sizeof(val) ? -EIO : 0;
}
