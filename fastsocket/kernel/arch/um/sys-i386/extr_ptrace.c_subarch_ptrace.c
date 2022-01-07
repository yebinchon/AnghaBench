
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 long EIO ;

long subarch_ptrace(struct task_struct *child, long request, long addr,
      long data)
{
 return -EIO;
}
