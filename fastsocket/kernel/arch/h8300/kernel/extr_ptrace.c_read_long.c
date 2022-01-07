
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;



__attribute__((used)) inline
static int read_long(struct task_struct * tsk, unsigned long addr,
 unsigned long * result)
{
 *result = *(unsigned long *)addr;
 return 0;
}
