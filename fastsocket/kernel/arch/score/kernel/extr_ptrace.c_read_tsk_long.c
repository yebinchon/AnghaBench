
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int EIO ;
 int access_process_vm (struct task_struct*,unsigned long,unsigned long*,int,int ) ;

int
read_tsk_long(struct task_struct *child,
  unsigned long addr, unsigned long *res)
{
 int copied;

 copied = access_process_vm(child, addr, res, sizeof(*res), 0);

 return copied != sizeof(*res) ? -EIO : 0;
}
