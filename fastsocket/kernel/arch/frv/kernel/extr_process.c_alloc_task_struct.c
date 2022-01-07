
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int atomic_t ;


 int GFP_KERNEL ;
 int THREAD_SIZE ;
 int atomic_set (int *,int) ;
 struct task_struct* kmalloc (int ,int ) ;

struct task_struct *alloc_task_struct(void)
{
 struct task_struct *p = kmalloc(THREAD_SIZE, GFP_KERNEL);
 if (p)
  atomic_set((atomic_t *)(p+1), 1);
 return p;
}
